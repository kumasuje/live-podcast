<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" type="text/css" href="styles/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <title>Fresher's Hub</title>
</head>

<body class="main_page" data-spy="scroll" data-target=".navbar" data-offset="500" >

<!--start:navbar-->
<nav id="header" class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
       <a href="home_page.html" id="title" class="navbar-brand"  ><img id="logo" src="images/logo.png" target="_blank/" alt="Logo"/>Fresher's Hub</a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
        </button> 
  	</div>
      
  		<div class="collapse navbar-collapse" id="myNavbar">

        <ul class="nav navbar-nav" id="menu_bar">
      
          <li><a href="discover.html" id="menu_bar_items">Discover&emsp;</a></li>
          <li><a href="live.html" id="menu_bar_items">Live&emsp;</a></li>
          <li><a href="profile.html" id="menu_bar_items">Profile&emsp;</a></li>
          <li><a href="about_us.html" id="menu_bar_items">About&emsp;</a></li>
          <li><a href="feedback.html" id="menu_bar_items">Feedback&emsp;</a></li>
        </ul>
        
        <ul class="nav navbar-nav navbar-right">
          <li><a href="log_in.html" id="menu_bar_items_log_in"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
          <li><a href="log_in.html" id="menu_bar_items_log_in"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
        </ul>
        </div>
    </div>
</nav>
<!--end:navbar-->
  

<!-- start of div:container the scrolling part -->
<div id ="content_of_page" class="container-fluid" >

  <!-- start:Slider -->

  <div id="slider" class="row text-center">
    <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    
      <div id="myCarousel" class="carousel slide" data-ride="carousel">

      <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            
            <figure class="item active text-center">
            <a href="#" target="_blank">
                <img src="images/activities_main.jpg" id="slider_images" alt="Activities Podcast"/>
                <figcaption id="slider_images_tag">Activities</figcaption>
            </a>
            </figure>
        
          
            <figure class="item text-center">
            <a href="#">
                <img src="images/cheerleaders_main.jpg" id="slider_images" alt="Join different groups podcast"/>
                <figcaption id="slider_images_tag">University groups</figcaption>
            </a>
            </figure>
        

            <figure class="item text-center">
            <a href="#">
                <img src="images/friends_main.jpg" id="slider_images" alt="Type of crowd podcast"/>
                <figcaption id="slider_images_tag">Academia</figcaption>
            </a>
            </figure>
            

            
            <figure class="item text-center">
            <a href="#">
                <img src="images/library_main.jpg" id="slider_images" alt="Study resources podcast"/>
                <figcaption id="slider_images_tag">Libraries</figcaption>
            </a>
            </figure>
            

            <figure class="item text-center">
            <a href="#">
                <img src="images/health_main.jpg" id="slider_images" alt="Healthcare podcast"/>
                <figcaption id="slider_images_tag">Healthcare</figcaption>
                </a>
            </figure>
            

           <figure class="item text-center">
            <a href="#">
                <img src="images/map_main.jpg" id="slider_images" alt="Getting around podcast"/>
                <figcaption id="slider_images_tag">Getting around</figcaption>
            </a>
            </figure>
            

        </div>


         <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>


        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
      </div>


    </section>
  </div>

  <!-- end:Slider -->


  <hr>

  <!-- start: description -->
  <div class="row">

    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>

    <section id="overview"  class="panel panel-info col-xs-10 col-sm-10 col-md-10 col-lg-10">

        <h2 id="sub_heading" class="panel panel-heading" >Overview</h2>
          
        <p id="content" class="panel panel-body" >
          New to your university? Feeling lost? Browse through Fresher's Hub to have all your questions answered through podcassts. You can get information from the basic health care to all the groups you can join, hot to get around the university and excel at your education. You will surely find our website very resourceful to get an overall idea about any topic from educational queries to food and other places to de-stress yourself during the weekend.
          
          
        </p>

    </section>

    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>

  </div>

  <!-- end: description -->
    



  <footer>
  <hr>
    References: <a href="https://www.indiana.edu/">Indiana University Website</a>
  </footer>


</div>
<!-- end of div:container -->



</body>
</html>