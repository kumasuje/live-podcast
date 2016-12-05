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


  <!-- start:form -->

   <div id="single_ticket" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

        <p> Invalid User Id or Password. Please try again </p>

   </div>
  <!-- log in -->

          <div id="single_ticket" class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <div id="overview" class="panel panel-default">
                <div id="description_heading" class="panel-heading">Login</div>
                    <div id="description_content" class="panel-body">

              	        <form name="project_form" id="project_form" action="/loginUser" enctype="multipart/form-data" method="POST">

                     <div class="col-xs-12 col-sm-12 col-md-9 col-lg-6">
                        <label for="userid">User ID</label>
                        <input type="userid" name="userid" class="form-control" id="userid" placeholder="Enter Your userid" required="true">
                      </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <label for="password">Password</label>
                        <input type="password"	name="password" class="form-control" id="password" placeholder="Enter Your Password" required="true">
                    </div>

                     <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

                     		<button type="submit" name="continue" value="continue" id="continue" class="btn btn-primary">  Login </button>
                     </div>

               </form>
              </div>
            </div>
        </div>


  <!-- end: form-->
    



  <footer>
  <hr>
    References: <a href="https://www.indiana.edu/">Indiana University Website</a>
  </footer>


</div>
<!-- end of div:container -->



</body>
</html>