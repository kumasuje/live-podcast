<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>AIYO RADIO</title>
    <script type="text/javascript" src="angular.min.js"></script>
    <script type="text/javascript" src="app.js"></script>
    <!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.1.3/material.min.css">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="styles_custom.css">
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
  </head>
  <body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <div class="android-header mdl-layout__header">
        <div class="mdl-layout__header-row">
          <span class="android-title mdl-layout-title">
            <h5 class="android-logo-image" style="color:#F43046;">AIYO RADIO</h5>
          </span>
          <!-- Add spacer, to align navigation to the right in desktop -->
          <div class="android-header-spacer mdl-layout-spacer"></div>
          <div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
            <label class="mdl-button mdl-js-button mdl-button--icon" for="search-field">
              <i class="material-icons">search</i>
            </label>
            <div class="mdl-textfield__expandable-holder">
              <input class="mdl-textfield__input" type="text" id="search-field">
            </div>
          </div>
        </div>
      </div>

      <div class="android-drawer mdl-layout__drawer">
        <span style="background-color:#F43046;">
          <h4 style="text-align:center;color:#fff;">AIYO RADIO</h4>
          <h6 style="text-align:right;color:#fff;margin-right:8px;">Log In or Name</h6>
        </span>
          <nav class="mdl-navigation">
            <a class="mdl-navigation__link" href="#" style="color:#F43046; font-size:20px;">Discover</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Hot</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Category</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Anchors</a>

            <div class="android-drawer-separator"></div>
            
            <a class="mdl-navigation__link" href="#" style="color:#F43046; font-size:20px;">Live</a>
            
            <div class="android-drawer-separator"></div>
            
            <a class="mdl-navigation__link" href="#" style="color:#F43046; font-size:20px;">History</a>

            <div class="android-drawer-separator"></div>
            
            <a class="mdl-navigation__link" href="#" style="color:#F43046; font-size:20px;">Profile</a>
            
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Credits</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Refer</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Feedback</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Settings</a>
            <a class="mdl-navigation__link" href="#" style="text-align:left;margin-left:10%;">Log Out</a>
            
            <div class="android-drawer-separator"></div>
            
            
          </nav>
      </div>

      <div class="android-content mdl-layout__content">

      <div id="top">
  <img class="mySlides" src="images/sample1.jpg" style="margin:auto;width:50%;height:30%;">
  <img class="mySlides" src="images/sample2.jpg" style="margin:auto;width:50%;height:30%;">
  <img class="mySlides" src="images/sample3.jpg" style="margin:auto;width:50%;height:30%;">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 3000); // Change image every 2 seconds
}
</script>

<hr style="color:#F43046;">
      


        <div class="android-more-section">
          <div class="android-section-title mdl-typography--display-1-color-contrast">Popularity Charts</div>
          <div class="android-card-container mdl-grid">
            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample1.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample2.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample3.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample4.jpg">
              </div>
            </div>
          </div>
        </div>
        <hr style="color:#F43046;">
        <div class="android-more-section">
          <div class="android-section-title mdl-typography--display-1-color-contrast">Bloomington</div>
          <div class="android-card-container mdl-grid">
            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
            <img src="images/sample1.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample2.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample3.jpg">
              </div>
            </div>

            <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">
              <div class="mdl-card__media">
                <img src="images/sample4.jpg">
              </div>
            </div>
          </div>
        </div>


        <footer class="android-footer mdl-mega-footer">
          <div class="mdl-mega-footer--top-section">
            <div class="mdl-mega-footer--left-section">
              <button class="mdl-mega-footer--social-btn"></button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
            </div>
            <div class="mdl-mega-footer--right-section">
              <a class="mdl-typography--font-light" href="#top" style="color:#F43046;">
                Back to Top
                <i class="material-icons">expand_less</i>
              </a>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <script src="https://code.getmdl.io/1.1.3/material.min.js"></script>
  </body>
</html>
