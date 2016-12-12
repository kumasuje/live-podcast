<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.List" %>
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
<nav id="header" class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="home_page.html" class="navbar-brand"><img id="logo" src="images/logo_title.png" alt="Logo"/></a>
  	</div>

  		<div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="discover.html" id="menu_bar_items">Discover&emsp;</a></li>
          <li><a href="profile.html" id="menu_bar_items1">Profile&emsp;</a></li>
          <li><a href="about_us.html" id="menu_bar_items2">About&emsp;</a></li>
          <li><a href="feedback.html" id="menu_bar_items3">Feedback&emsp;</a></li>
         <li><a href="log_in.html" id="menu_bar_items_log_in"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>

            <c:if test="${empty user}">
               <li><a href="log_in.html" id="menu_bar_items_log_in1"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
            </c:if>
            <c:if test="${not empty user}">
               <li><a href="/logout" id="menu_bar_items_log_in2"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
            </c:if>
        </ul>
        </div>
    </div>
</nav>
<!--end:navbar-->

<!-- start of div:container the scrolling part -->
<div id ="content_of_page" class="container-fluid" >

  <!-- start: description -->
  <div class="row">

    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>

    <section id="overview"  class="panel panel-info col-xs-10 col-sm-10 col-md-10 col-lg-10">

        <!-- <h2 id="sub_heading" class="panel panel-heading" >Overview</h2> -->

          <!-- start:Slider -->

  <div id="slider" class="row text-center">

    <!-- <section class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> -->
      <div id="myCarousel" class="carousel slide" data-ride="carousel">

      <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">


            <figure class="item active text-center">
                 <a href="#" target="_blank">
                <img src="images/activities_main.jpg" alt="Activities Podcast"/>

                </a>
                 <figcaption class="slider_images_tag">Activities</figcaption>
            </figure>


            <figure class="item text-center">

                <img src="images/cheerleaders_main.jpg" alt="Join different groups podcast"/>
                <figcaption class="slider_images_tag">University groups</figcaption>

            </figure>


            <figure class="item text-center">

                <img src="images/friends_main.jpg" alt="Type of crowd podcast"/>
                <figcaption class="slider_images_tag">Academia</figcaption>

            </figure>



            <figure class="item text-center">

                <img src="images/library_main.jpg" alt="Study resources podcast"/>
                <figcaption class="slider_images_tag">Libraries</figcaption>

            </figure>


            <figure class="item text-center">

                <img src="images/health_main.jpg" alt="Healthcare podcast"/>
                <figcaption class="slider_images_tag">Healthcare</figcaption>

            </figure>


           <figure class="item text-center">

                <img src="images/map_main.jpg" alt="Getting around podcast"/>
                <figcaption class="slider_images_tag">Getting around</figcaption>

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


    <!-- </section> -->
  </div>

  <!-- end:Slider -->

        <p id="content" class="panel panel-body" >
          New to your university? Feeling lost? Browse through Fresher's Hub to have all your questions answered through podcassts. You can get information from the basic health care to all the groups you can join, hot to get around the university and excel at your education. You will surely find our website very resourceful to get an overall idea about any topic from educational queries to food and other places to de-stress yourself during the weekend.


        </p>

    </section>

    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>

  </div>

  <!-- end: description -->




  <footer id="footer_page" class="footer navbar-fixed-bottom">
 References: <a href="https://www.indiana.edu/">Indiana University Website</a>
  </footer>


</div>
<!-- end of div:container -->



</body>
</html>