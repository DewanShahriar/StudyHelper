<!DOCTYPE html>
<html lang="en">
	
<!-- Mirrored from themified.com/friend-finder/timeline.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Apr 2021 09:19:30 GMT -->
<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>My Timeline | This is My Coolest Profile</title>

    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/style.css" />
		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/ionicons.min.css" />
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/font-awesome.min.css" />
    <link href="css/emoji.css" rel="stylesheet">
    
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700,700i" rel="stylesheet">
    
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="images/fav.png"/>
	</head>
  <body>

    <!-- Header
    ================================================= -->
		<header id="header">
      <nav class="navbar navbar-default navbar-fixed-top menu">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?php echo base_url()?>home"><h4>Study Assistance</h4></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right main-menu">
              
              <li class="dropdown">
                <a href="<?php echo base_url()?>home" class=""><span><img src="<?php echo base_url();?>assets/images/home-1.png" alt="" width="30px" height="30px" /></span></a>  
              </li>

              <li class="dropdown">
                <a href="#" class=""><span><img src="<?php echo base_url();?>assets/images/profile-1.png" alt="" width="30px" height="30px" /></span></a>  
              </li>

              <li class="dropdown">
                <a href="#" class=""><span><img src="<?php echo base_url();?>assets/images/request-1.png" alt="" width="30px" height="30px" /></span></a>  
              </li>
              
              <li class="dropdown">
                <a href="<?php echo base_url()?>login/logout"><span><img src="<?php echo base_url();?>assets/images/logout-1.png" alt="" width="30px" height="30px" /></span></a>
              </li>

            </ul>
            <form class="navbar-form navbar-right hidden-sm">
              <div class="form-group">
                <i class="icon ion-android-search"></i>
                <input type="text" id="search" class="form-control" placeholder="Search friends, photos, videos">
              </div>
            </form>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
      </nav>
    </header>
    <!--Header End-->

    <div class="container">

      <!-- Timeline
      ================================================= -->
      <div class="timeline">
        <div class="timeline-cover" style="background: url('<?php echo base_url();?>assets/images/covers/1.jpg') no-repeat;">

          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <img src="<?php echo base_url();?>assets/images/users/user.png" alt="" class="img-responsive profile-photo" />
                  <h3>Shahriar Rahman</h3>
                  <p class="text-muted">Software Developer</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="<?php echo base_url()?>timeline" class="<?php if($activeMenu === 'timeline') echo 'active';?>">Timeline</a></li>
                  <li><a href="<?php echo base_url()?>timeline-about" class="<?php if($activeMenu === 'timeline_about') echo 'active';?>">About</a></li>
                  <li><a href="<?php echo base_url()?>site/timeline-album" class="<?php if($activeMenu === 'timeline_album') echo 'active';?>">Album</a></li>
                  <li><a href="<?php echo base_url()?>site/timeline-friends" class="<?php if($activeMenu === 'timeline_friends') echo 'active';?>">Friends</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following his</li>
                  <li><button class="btn-primary">Edit</button></li>
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="<?php echo base_url();?>assets/images/users/user.png" alt="" class="img-responsive profile-photo" />
              <h4>Sarah Cruiz</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="<?php echo base_url();?>/site/timeline" class="<?php if($activeMenu === 'timeline') echo 'active';?>">Timeline</a></li>
                <li><a href="<?php echo base_url();?>/site/about" class="<?php if($activeMenu === 'about') echo 'active';?>">About</a></li>
                <li><a href="timeline-album.html" class="<?php if($activeMenu === 'album') echo 'active';?>">Album</a></li>
                <li><a href="timeline-friends.html" class="<?php if($activeMenu === 'friends') echo 'active';?>">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>

            <!-- middle content start 
          ================================================= -->
            <?php
              if(isset($content)){

                $this->load->view($content);
              }
            ?>
            <!-- middle content start 
          ================================================= -->
          
            <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer
    ================================================= -->
    <footer id="footer">
      <div class="container">
      	<div class="row">
          <div class="footer-wrapper">
            <div class="col-md-3 col-sm-3">
              <a href="#"><img src="<?php echo base_url();?>assets/images/logo-black.png" alt="" class="footer-logo" /></a>
              <ul class="list-inline social-icons">
              	<li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h5>For individuals</h5>
              <ul class="footer-links">
                <li><a href="#">Signup</a></li>
                <li><a href="#">login</a></li>
                <li><a href="#">Explore</a></li>
                <li><a href="#">Finder app</a></li>
                <li><a href="#">Features</a></li>
                <li><a href="#">Language settings</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h5>For businesses</h5>
              <ul class="footer-links">
                <li><a href="#">Business signup</a></li>
                <li><a href="#">Business login</a></li>
                <li><a href="#">Benefits</a></li>
                <li><a href="#">Resources</a></li>
                <li><a href="#">Advertise</a></li>
                <li><a href="#">Setup</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h5>About</h5>
              <ul class="footer-links">
                <li><a href="#">About us</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms</a></li>
                <li><a href="#">Help</a></li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-3">
              <h5>Contact Us</h5>
              <ul class="contact">
                <li><i class="icon ion-ios-telephone-outline"></i>+1 (234) 222 0754</li>
                <li><i class="icon ion-ios-email-outline"></i>info@thunder-team.com</li>
                <li><i class="icon ion-ios-location-outline"></i>228 Park Ave S NY, USA</li>
              </ul>
            </div>
          </div>
      	</div>
      </div>
      <div class="copyright">
        <p>Thunder Team © 2016. All rights reserved</p>
      </div>
		</footer>
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>
    

    <!-- Scripts
    ================================================= -->
    <script src="<?php echo base_url();?>assets/js/jquery-3.1.1.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.sticky-kit.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/jquery.scrollbar.min.js"></script>
    <script src="<?php echo base_url();?>assets/js/script.js"></script>

  </body>

<!-- Mirrored from themified.com/friend-finder/timeline.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 21 Apr 2021 09:19:59 GMT -->
</html>
