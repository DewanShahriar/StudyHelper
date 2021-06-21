<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends CI_Controller {

	function __construct() {

        parent::__construct();

        $inactive = 7200;

	    if (isset($_SESSION['testing']) && (time() - $_SESSION['testing'] > $inactive)) {
	             
	        $this->session->sess_destroy(); // destroy session data
	        redirect('login', 'refresh');  
	    }
	    $_SESSION['testing'] = time(); // Update session

        if (!isset($_SESSION['user_auth'])) {
			redirect('login', 'refresh');
		}

        $this->load->model('SiteModel');

        date_default_timezone_set("Asia/Dhaka");
    }

    //home page view
	public function index()
	{
		
		$user_id = $_SESSION['user_id'];
		
 		$all_post_list = $this->SiteModel->get_all_posts();

 		$post_list = array();

 		foreach ($all_post_list as $value) {

            $temppost = array();
            
            $temppost['id']            = $value->id;
            $temppost['user_id']       = $value->user_id;
            $temppost['content']       = $value->content;
            $temppost['attachment']    = $value->attachment;
            $temppost['post_like']     = $value->post_like;
            $temppost['type']          = $value->type;
            $temppost['status']        = $value->status;
            $temppost['created_at']    = $value->created_at;
            $temppost['first_name']    = $value->first_name;
            $temppost['last_name']     = $value->last_name;
            $temppost['profile_photo'] = $value->profile_photo;
            $temppost['time_ago']      = $this->time_elapsed_string($value->created_at);
            $temppost['is_like']       = $this->db->query('select * from post_likes 
	                                    where post_id="'.$value->id.'" 
	                                    and user_id = "'.$user_id.'"')->num_rows();
            $temppost['comments']      = $this->SiteModel->get_comments($value->id);

            array_push($post_list, $temppost);
 
            
        }

        $data['post_list'] = json_decode(json_encode($post_list));

        // echo "<pre>";
        // print_r($data['post_list']);
        // exit;

        $data['title']   = 'home';
 		$data['content'] = 'newsfeed';

		$this->load->view('home', $data);
	}

	//profile (timeline) view
	public function timeline()
	{
		
		$data['content']    = 'timeline';
		$data['title']      = 'timeline';
		$data['activeMenu'] = 'timeline';

		$this->load->view('profile', $data);
	}

	//profile (timeline-about) view
	public function timeline_about()
	{
		
		$data['content']    = 'timeline_about';
		$data['title']      = 'timeline_about';
		$data['activeMenu'] = 'timeline_about';

		$this->load->view('profile', $data);
	}

	//create post
	public function create_post()
	{
		
		if($_SERVER['REQUEST_METHOD'] == 'POST'){

			$create_post_data = array();
			$create_post_data['attachment'] = '';

			if (!empty($_FILES["file"]['name'])){

				$path_parts                 = pathinfo($_FILES["file"]['name']);
				$newfile_name               = preg_replace('/[^A-Za-z]/', "", $path_parts['filename']);
				$dir                        = date("YmdHis", time());
				$config_c['file_name']      = $newfile_name . '_' . $dir;
				$config_c['remove_spaces']  = TRUE;
				$config_c['upload_path']    = 'assets/images/post-images/';
				$config_c['max_size']       = '20000'; //  less than 20 MB
				$config_c['allowed_types']  = 'jpg|png|jpeg|jpg|JPG|JPG|PNG|JPEG|gif';

				$this->load->library('upload', $config_c);
				$this->upload->initialize($config_c);
				if (!$this->upload->do_upload('file')) {

				} else {

					$upload_c = $this->upload->data();
					$create_post_data['attachment']   = $config_c['upload_path'] . $upload_c['file_name'];
					list($width_orig, $height_orig) = getimagesize($create_post_data['attachment']);
					$new_width  = $width_orig/4;
					$new_height = $height_orig/4;
					$this->image_size_fix($create_post_data['attachment'], $new_width, $new_height);
					
				}
			}

		
			$create_post_data['user_id']   = $_SESSION['user_id'];
			$create_post_data['content']   = $this->input->post('content', true);
			
			if ($create_post_data['attachment'] != '') $create_post_data['type'] = 1;

			$create_post_data['created_at'] = date('Y-m-d H:i:s');

			$create_post_insert = $this->db->insert('posts', $create_post_data);
			$last_id = $this->db->insert_id();
			$data = $this->SiteModel->last_post_inserted($last_id);

			$temppost = array();
            
            $temppost['id']            = $last_id;
            $temppost['user_id']       = $data->user_id;
            $temppost['content']       = $data->content;
            $temppost['attachment']    = $data->attachment;
            $temppost['post_like']     = $data->post_like;
            $temppost['type']          = $data->type;
            $temppost['status']        = $data->status;
            $temppost['created_at']    = date('d M Y h:i A', strtotime($data->created_at));
            $temppost['first_name']    = $data->first_name;
            $temppost['last_name']     = $data->last_name;
            $temppost['profile_photo'] = $data->profile_photo;
            $temppost['time_ago']      = $this->time_elapsed_string($data->created_at);
            
			if($create_post_insert){

				echo json_encode($temppost, JSON_UNESCAPED_UNICODE);
					
			} else{

				echo json_encode("err");
			}
		}
	}

	//time convertion timestamp to time ago
	function time_elapsed_string($datetime, $full = false) 
	{

    	$now = new DateTime;
      	$ago = new DateTime($datetime);
      	$diff = $now->diff($ago);

      	$diff->w = floor($diff->d / 7);
      	$diff->d -= $diff->w * 7;

	    $string = array(
          	'y' => 'year',
          	'm' => 'month',
          	'w' => 'week',
          	'd' => 'day',
          	'h' => 'hour',
          	'i' => 'minute',
          	's' => 'second',
	    );

	    foreach ($string as $k => &$v) {
	        if ($diff->$k) {
	            $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
	        } else {
	            unset($string[$k]);
	        }
	    }

      	if (!$full) $string = array_slice($string, 0, 1);
      	return $string ? implode(', ', $string) . ' ago' : 'just now';
  	}

  	//autocomplete search 
  	public function search()
    {
        $search_val = strtolower($this->input->post('search_val', true));

        $search_list = $this->SiteModel->search_data($search_val);

        $search_items = array();

        foreach ($search_list as $value) {

                $teamplist = array();
                
                $teamplist['id']           = $value->id;
                $teamplist['first_name']   = $value->first_name;
                $teamplist['last_name']    = $value->last_name;
                $teamplist['user_name']    = $value->user_name;

                array_push($search_items, $teamplist);
        }
        
        echo json_encode($search_items, JSON_UNESCAPED_UNICODE);
    }

    //image resize
    public function image_size_fix($filename, $new_width = 600, $new_height = 400, $destination = '') {

		// Content type
		// header('Content-Type: image/jpeg');
		// Get new dimensions
		list($width_orig, $height_orig) = getimagesize($filename);
		// $new_width = $width_orig/4;
		// $new_height = $height_orig/4;
		;
		
		if ($destination == '' || $destination == null)
			$destination = $filename;

		$extention = pathinfo($destination, PATHINFO_EXTENSION);
		if ($extention != "png" && $extention != "PNG" && $extention != "JPEG" && $extention != "jpeg" && $extention != "jpg" && $extention != "JPG") {
 
			return true;
		}
		// Resample 
		$image_p = imagecreatetruecolor($new_width, $new_height);
		$black   = imagecolorallocate($image_p, 0, 0, 0);

        // Make the background transparent
        imagecolortransparent($image_p, $black);

		$image   = imagecreatefromstring(file_get_contents($filename));
		imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $width_orig, $height_orig);

		
		if ($extention == "png" || $extention == "PNG") {
			imagepng($image_p, $destination, 9);
		} else if ($extention == "jpg" || $extention == "JPG" || $extention == "jpeg" || $extention == "JPEG") {
			imagejpeg($image_p, $destination, 70);
		} else {
			imagepng($image_p, $destination);
		}
		return true;
	}

	//ajax call like increase and decrease
	public function save_likes()
    {

	    $user_id = $_SESSION['user_id'];
	    $post_id = $this->input->post('post_id');

	    $created_at = date('Y-m-d H:i:s');

	    $fetchlikes = $this->db->query('select post_like from posts where id="'.$post_id.'"');
	    $result=$fetchlikes->result();

	    $is_like = false;

	    $checklikes = $this->db->query('select * from post_likes 
	                                    where post_id="'.$post_id.'" 
	                                    and user_id = "'.$user_id.'"');
	    $resultchecklikes = $checklikes->num_rows();
	    
	    if($resultchecklikes == '0' ){

		    if($result[0]->post_like=="" || $result[0]->post_like=="NULL") {
		        $this->db->query('update posts set post_like=1 where id="'.$post_id.'"');
		       
		    }
		    else {
		        $this->db->query('update posts set post_like=post_like+1 where id="'.$post_id.'"');
		       
		    }

		    $data=array('post_id'=>$post_id,'user_id'=>$user_id, 'created_at'=>$created_at);
		    $this->db->insert('post_likes',$data);
		    $is_like = true;
	    } else {
		    $this->db->delete('post_likes', array('post_id'=>$post_id,
		                                          'user_id'=>$user_id));
		    $this->db->query('update posts set post_like=post_like-1 where id="'.$post_id.'"');
		    $is_like = false;
		}

	    $this->db->select('post_like');
	    $this->db->from('posts');
	    $this->db->where('id',$post_id);

	    $query  = $this->db->get();
	    $result = $query->result();

	    $res['likes'] = $result[0]->post_like;
	    $res['is_like'] = $is_like;

	    echo json_encode($res);
    }

    //ajax call comment insert
	public function save_comment()
    {

	    $user_id = $_SESSION['user_id'];
	    $post_id = $this->input->post('post_id');
	    $comment_content = $this->input->post('comment_content');

	    $created_at = date('Y-m-d H:i:s');

	    $comment_data['post_id']         = $post_id;
	    $comment_data['user_id']         = $user_id;
	    $comment_data['comment_content'] = $comment_content;
	    $comment_data['created_at']      = $created_at;

	    

	    $add_comment  = $this->db->insert('post_comments', $comment_data);
	    $last_comment = $this->db->insert_id();

	    $res = array();

	    if($add_comment){
	    	$res = $this->SiteModel->get_last_insert_comment($last_comment);
	    }

	    // echo "<pre>";
	    // print_r($res);
	    // exit;

	    echo json_encode($res);
    }

}