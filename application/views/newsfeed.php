<style type="text/css">
.image-upload>input {
  display: none;
}
</style>

<div class="col-md-7">

            <!-- Post Create Box
            ================================================= -->
            <form id="post_submit" method="POST" enctype="multipart/form-data">
            <div class="create-post">
            	<div class="row">
            		<div class="col-md-7 col-sm-7">
                  <div class="form-group">
                    <img src="<?php echo base_url() . $_SESSION['user_profile_photo']; ?>" alt="" class="profile-photo-md" />
                    <textarea name="content" id="content" cols="30" rows="1" class="form-control" placeholder="Write what you wish"></textarea>
                  </div>
                </div>
            		<div class="col-md-5 col-sm-5">
                  <div class="tools">
                    <ul class="publishing-tools list-inline">
                      <li><div class="image-upload" style="position: relative;bottom:15px;"><label for="file-input"><img src="<?php echo base_url();?>assets/images/image-icon.png" alt="user" class="profile-photo-md pull-left" /></label><input id="file-input" type="file" name="file" /></div></li>
                      
                    </ul>
                    <button class="btn btn-primary pull-right" id="publish">Publish</button>
                  </div>
                </div>
            	</div>
              <center>
              <div id="uploadStatus">
                
              </div>
              </center>
            </div><!-- Post Create Box End-->
            </form>


          <div id="post_start">
            <!-- Post Content
            ================================================= -->
            <?php foreach ($post_list as $key => $list) { ?>
            <div class="post-content">
              <?php if($list->type == 1){?>
              <img src="<?php echo base_url($list->attachment);?>" alt="post-image" class="img-responsive post-image" />
              <?php }?>
              <div class="post-container">
                <img src="<?php echo base_url($list->profile_photo);?>" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link"><?php echo $list->first_name.' '.$list->last_name;?></a> <span class="following"><?php echo date('d M Y h:i A', strtotime($list->created_at));?></span></h5>
                    <p class="text-muted">Published a <?php if($list->type == 1) echo "photo"; else echo "post";?> about <?php echo $list->time_ago?></p>
                  </div>
                  <div class="reaction">
                    <a id="like_a<?php echo $list->id?>" class="btn text-<?php if($list->is_like == 0) echo 'blue'; else echo 'green';?>" onclick="like_post(<?php echo $list->id?>)"><i class="icon ion-thumbsup"></i> <span id="like_count<?php echo $list->id?>"> <?php echo $list->post_like;?></span></a>
                    <!-- <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a> -->
                  </div>
                  <!-- <div class="line-divider"></div> -->
                  <div class="post-text">
                    <p><?php echo $list->content;?></p>
                  </div>
                  <div class="line-divider"></div>
                  <?php foreach($list->comments as $key2=>$comment) {?>
                  <div class="post-comment">
                    <img src="<?php echo base_url($comment->profile_photo);?>" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link"><?php echo $comment->first_name;?></a> <?php echo $comment->comment_content;?> </p>
                  </div>
                <?php }?>
                  <div class="post-comment">
                    <img src="<?php echo base_url() . $_SESSION['user_profile_photo']; ?>" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>

          <?php }?>

        </div>
</div>

<script type="text/javascript">
  $(document).ready(function (e) {
    $('#post_submit').on('submit',(function(e) {
        e.preventDefault();
        var formData = new FormData(this);
        var content  = $('#content').val();
        var photo    = $('#file-input').val();
        
        if(content.length > 0 || photo.length > 0) {
          $.ajax({
              type:'POST',
              url: '<?php echo base_url() . "site/create-post"; ?>',
              data:formData,
              cache:false,
              contentType: false,
              processData: false,
              beforeSend: function(){

                $('#uploadStatus').html('<img src="<?php echo base_url()?>assets/images/1488.gif" width="60px" height="60px"/>');
              },
              success:function(res){
                setTimeout(function(){ $('#uploadStatus').hide(); }, 1500);
                
                var obj  = JSON.parse(res);
                var data = '';
                
                if(obj.type == 1){

                  data = '<div class="post-content"><img src="<?php echo base_url();?>'+obj.attachment+'" alt="post-image" class="img-responsive post-image" /><div class="post-container"><img src="<?php echo base_url();?>'+obj.profile_photo+'" alt="user" class="profile-photo-md pull-left" /><div class="post-detail"><div class="user-info"><h5><a href="timeline.html" class="profile-link">'+obj.first_name+' '+obj.last_name+'</a> <span class="following">'+obj.created_at+'</span></h5><p class="text-muted">Published a photo about '+obj.time_ago+'</p></div><div class="reaction"><a id="like_a'+obj.id+'" class="btn text-blue" onclick="like_post('+obj.id+')"><i class="icon ion-thumbsup"></i> <span id="like_count'+obj.id+'">'+obj.post_like+'</span></a></div><div class="post-text"><p>'+obj.content+'</p></div><div class="line-divider"></div><div class="post-comment"><img src="<?php echo base_url() . $_SESSION['user_profile_photo']; ?>" alt="" class="profile-photo-sm" /><input type="text" class="form-control" placeholder="Post a comment"></div></div></div></div>';

                } else {

                  data = '<div class="post-content"><div class="post-container"><img src="<?php echo base_url();?>'+obj.profile_photo+'" alt="user" class="profile-photo-md pull-left" /><div class="post-detail"><div class="user-info"><h5><a href="timeline.html" class="profile-link">'+obj.first_name+' '+obj.last_name+'</a> <span class="following">'+obj.created_at+'</span></h5><p class="text-muted">Published a post about '+obj.time_ago+'</p></div><div class="reaction"><a id="like_a'+obj.id+'" class="btn text-blue" onclick="like_post('+obj.id+')"><i class="icon ion-thumbsup"></i> <span id="like_count'+obj.id+'">'+obj.post_like+'</span></a></div><div class="post-text"><p>'+obj.content+'</p></div><div class="line-divider"></div><div class="post-comment"><img src="<?php echo base_url() . $_SESSION['user_profile_photo']; ?>" alt="" class="profile-photo-sm" /><input type="text" class="form-control" placeholder="Post a comment"></div></div></div></div>';

                }
                
                $('#content').val('');
                $('#file-input').val('');
                $('#post_start').prepend(data);
                
                
              },
              error: function(res){
                $('#uploadStatus').hide();
                console.log("error");
                console.log(res);
              }
          });

        } else {
          $('#uploadStatus').html('<span class="following">please say something</span');
          setTimeout(function(){ $('#uploadStatus').hide(); }, 1500);
          
        }
    }));

});
</script>

<script type="text/javascript">
  function like_post(post_id) {
    
    $.ajax({
        type: "POST",
        url: '<?php echo base_url() . "site/save-likes"; ?>',
        data: {post_id: post_id},
        success: function (response) {
          var data = JSON.parse(response);
          console.log(data);
          $("#like_count"+post_id).html(data.likes);
          
          if(data.is_like == true){
            $("#like_a"+post_id).addClass("btn text-green");
            
          } else {
            $("#like_a"+post_id).removeClass("text-green");
          }
          
        }
    });
    
  }
</script>