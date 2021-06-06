<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php
	class SiteModel extends CI_Model{
		
		//check duplicate email exist in user table
		public function isRowExist($tableName,$data, $returnmessage, $user_id = NULL){
		
				$this->db->where($data);
				if($user_id !== NULL) {
						$this->db->where('userId',$user_id);
				}
				if($returnmessage == 'num_rows'){
						return $this->db->get($tableName)->num_rows();
				}else if($returnmessage == 'result_array'){
						return $this->db->get($tableName)->result_array();
				}else{
						return $this->db->get($tableName)->result();
				}
		}

		//get all posts for newsfeed post show
		public function get_all_posts()
		{
			
			$this->db->select('posts.id, posts.user_id, posts.content, posts.attachment, posts.post_like, posts.type, posts.status, posts.created_at, register_users.first_name, register_users.last_name, register_users.profile_photo')

				->limit('50')
				->from('posts')
				->join('register_users','register_users.id = posts.user_id','left')
				->where('posts.status', '1')
				->order_by('posts.created_at', 'DESC')
				->group_by('posts.id');
				
			$query = $this->db->get();

			if ($query->num_rows() > 0) {

				return $query->result();

			} else {

				return array();
			}
		
		}

		//last post inserted
		public function last_post_inserted($id)
		{
			
			$this->db->select('posts.id, posts.user_id, posts.content, posts.attachment, posts.post_like, posts.type, posts.status, posts.created_at, register_users.id, register_users.first_name, register_users.last_name, register_users.profile_photo')

				
				->from('posts')
				->join('register_users','register_users.id = posts.user_id','left')
				->where('posts.status', '1')
				->where('posts.id', $id)
				->group_by('posts.id');
				
			$query = $this->db->get();

			if ($query->num_rows() > 0) {

				return $query->row();

			} else {

				return array();
			}
		
		}

		//get search data for autocomplete
		public function search_data($search)
		 {
		 	$this->db->select('id, first_name, last_name, user_name')

				->limit('5')
				->from('register_users')
				->where("LOWER(first_name) LIKE '%$search%'")
				->or_where("LOWER(last_name) LIKE '%$search%'")
				->or_where("LOWER(user_name) LIKE '%$search%'")
				->group_by('id');
				
			$query = $this->db->get();

			if ($query->num_rows() > 0) {

				return $query->result();

			} else {

				return array();
			}

		} 

		

		
		

	}
	
?>

