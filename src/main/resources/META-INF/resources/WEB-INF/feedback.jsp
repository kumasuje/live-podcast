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
        <a href="home_page.html" class="navbar-brand"><img id="logo" src="images/logo_title.png" target="_blank/" alt="Logo"/></a>
  	</div>

  		<div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="discover.html" id="menu_bar_items">Discover&emsp;</a></li>
          <li><a href="profile.html" id="menu_bar_items1">Profile&emsp;</a></li>
          <li><a href="about_us.html" id="menu_bar_items2">About&emsp;</a></li>
          <li><a href="feedback.html" id="menu_bar_items3">Feedback&emsp;</a></li>
         <li><a href="log_in.html" id="menu_bar_items_log_in"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>

            "${user}"
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
<div id ="content_of_page" class="container-fluid">
  <div id = "overview" class="panel panel-default">
    <div id="description_heading" class="panel-heading">Feedback</div>
    <div id="form_elements" class="panel-body">
      <form name="project_form" id="project_form" class="form-horizontal" action="/feedback" enctype="multipart/form-data" method="POST">
        <div class="form-group">
          <label class="control-label col-sm-2" for="name">Full Name:</label>
          <div class="col-sm-10">
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter full name">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Email:</label>
          <div class="col-sm-10">
            <input type="email"  name="email" class="form-control" id="email" placeholder="Enter email address">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="feedback">Feedback:</label>
          <div class="col-sm-10">
            <textarea class="form-control" name="feedback"  rows="5" id="feedback"></textarea>
          </div>
        </div>
        <div class="form-group">
         <div class="col-sm-offset-2 col-sm-10">
         		<button type="submit" name="continue" value="continue" id="continue" class="btn btn-primary">  Submit </button>
         </div>
        </div>
     </form>
    </div>
  </div>
<!--end:feedback-->


<footer id="footer_page" class="footer navbar-fixed-bottom">
 References: <a href="https://www.indiana.edu/">Indiana University Website</a>
  </footer>


</div>
<!-- end of div:container -->



</body>
</html>