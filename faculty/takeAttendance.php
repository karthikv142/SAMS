<?php


	$branch=$_POST['branch'];
	$sem=$_POST['sem'];
	$section=$_POST['section'];
	$subject=$_POST['subject'];
	$date=$_POST['date'];
	$slot=$_POST['slot'];
	include 'conn.php';

	$q="SELECT * FROM `student_profile` WHERE `branch`='$branch' AND `semester`='$sem' AND `section`='$section' ";
	$x=mysqli_query($con,$q);
	while($y=mysqli_fetch_assoc($x)){
		$json_data[]=$y;
	}
	$json = json_encode($json_data);
?>
<script type="text/javascript">
	alert("<?php echo $json; ?>");
</script>



<!doctype html>
<html lang="en">

<head>    
    <meta charset="utf-8">
    <meta name="description" content="SAMS">
    <meta name="keywords" content="Attendance">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="author" content="SAMS">
    <script>

      if(!(localStorage['login']=="success")){
            window.location.replace("login");
        }
          function logout(){
          alert("logout");
          localStorage.removeItem("login");
          localStorage.removeItem("sid");
          window.location.replace("login");
      }

        window.onbeforeunload = function() {

          localStorage.removeItem(login);
          localStorage.removeItem(sid);
          return '';
        };
    </script>
    <title>SAMS</title>
    <link rel="icon" href="../img/icon.png"  type="image/x-icon" />
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="../fonts/font-awesome.min.css" type="text/css" media="screen">
    <!-- Include roboto.css to use the Roboto web font, material.css to include the theme and ripples.css to style the ripple effect -->
    <link href="../css/material.min.css" rel="stylesheet">
    <link href="../css/ripples.min.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link href="../css/responsive.css" rel="stylesheet">
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/settings.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../css/toggle.css">

  </head>

  <body style="background:#eee">

    <div class="navbar navbar-invers menu-wrap">
      <div class="navbar-header text-center">
        <a class="navbar-brand logo-right" href="javascript:void(0)"><i class="fa fa-check-square-o"></i>SAMS</a>
        </div>
          <ul class="nav navbar-nav main-navigation">
            <li><a href="index">Home</a></li>
            <li><a href="profile">Profile</a></li>
            <li><a href="attendance">Attendance</a></li>
            <li><a href="time_table">Time Table</a></li>
            <li><a href="calendar">Calendar</a></li>
            <li><a href="syllabus">Syllabus</a></li>
            <li><a href="library">Library</a></li>
            <li><a href="internals">Internals</a></li>
            <li><a href="settings">Settings</a></li>
            <li><a href="#" onclick="logout()> <i class="fa fa-power-off" aria-hidden="true"></i> &nbsp;Logout </a></li>
          </ul>
          <button class="close-button" id="close-button">Close Menu</button>
      </div>
      
      <div class="content-wrap">
        <header class="slider-area" id="home">      
          <div class="container">
            <div class="col-md-12">
                <div class="navbar navbar-inverse sticky-navigation navbar-fixed-top" role="navigation" data-spy="affix" data-offset-top="200">
                  <div class="container">
                    <div class="navbar-header">
                      <a class="logo-left " href="index"><i class="fa fa-check-square-o"></i>SAMS</a>
                    </div>
                    <div class="navbar-right">
                      <button class="menu-icon"  id="open-button">
                        <i class="mdi-navigation-menu"></i>
                      </button>             
                    </div>
                  </div>
                </div>
            </div>     
          </div>  
          <!-- Main Slider Section -->
          
          <div class="container" style="position:relative;top:100px">
            <center><h2>TAKE ATTENDANCE</h2></center> 
            <div class="">
                <div class="col-md-8" style="padding:0">
                  <form role="form" id="AttendanceForm" class="contact-form" method="post" action="takeAttendance.php">
                  <div class="" >
                    <table class="table table-hover table-striped">
                      <tr>
                        <th width="10%">USN</th>
                        <th width="40%">STUDENT NAME</th>
                        <th width="10%">PRESTENT / ABSENT</th>
                        <th width="40%">REMARKS</th>
                      </tr>
                      <tr>
                        <td>1va13IS025</td>
                        <td>Sidhart Abhimanyu</td>
                        <td>
                          <label class="switch">
                            <input type="checkbox" checked>
                            <div class="slider round"></div>
                          </label>
                        </td>
                        <td><input type="text" class="form-control"></td>
                      </tr>
                      <tr>
                        <td>1va13IS025</td>
                        <td>Sidhart Abhimanyu</td>
                        <td>
                          <label class="switch">
                            <input type="checkbox" checked>
                            <div class="slider round"></div>
                          </label>
                        </td>
                        <td><input type="text" class="form-control"></td>
                      </tr>
                      <tr>
                        <td>1va13IS025</td>
                        <td>Sidhart Abhimanyu</td>
                        <td>
                          <label class="switch">
                            <input type="checkbox" checked>
                            <div class="slider round"></div>
                          </label>
                        </td>
                        <td><input type="text" class="form-control"></td>
                      </tr>
                      <tr>
                        <td>1va13IS025</td>
                        <td>Sidhart Abhimanyu</td>
                        <td>
                          <label class="switch">
                            <input type="checkbox" checked>
                            <div class="slider round"></div>
                          </label>
                        </td>
                        <td><input type="text" class="form-control"></td>
                      </tr>
                      <tr>
                        <td>1va13IS025</td>
                        <td>Sidhart Abhimanyu</td>
                        <td>
                          <label class="switch">
                            <input type="checkbox" checked>
                            <div class="slider round"></div>
                          </label>
                        </td>
                        <td><input type="text" class="form-control"></td>
                      </tr>
                      
                    </table>

                      
                      
                      <div class="col-md-12" >
                     <center> <button type="submit" id="AttendanceForm" class="btn btn-primary"></i>Submit Attendance</button> </center>
                      <div id="msgSubmit" class="h3 text-center"></div> 
                      <div class="clearfix"></div>   
                    </div>
                  </div> 
                  
                  </form>     
                  <!-- End  Form -->
                </div>
                <div class="col-sm-3 tabs">
                  <center>
                    <div class="social-info">
                       <h3 class="">View Attendance</h3>
                        <h4>View All Students Attendance</h4>
                       <a href="view_attendance"><h3 class="btn btn-primary">Go  <i class="fa fa-chevron-right" aria-hidden="true"></i></h3></a> 
                    </div>
                  </center>
                </div>
            </div>
          </div>
        <div id="loader">
         <div class="loader-inner ball-triangle-path">
            <div></div>
            <div></div>
            <div></div>
          </div>
        </div>


    <script src="../js/jquery-2.1.4.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/ripples.min.js"></script>
    <script src="../js/material.min.js"></script>
    <script src="../js/wow.js"></script>
    <script src="../js/jquery.mmenu.min.all.js"></script> 
    <script src="../js/count-to.js"></script>   
    <script src="../js/jquery.inview.min.js"></script>
    <script src="../js/form-validator.min.js"></script>  
    <script src="../js/contact-form-script.js"></script>     
    <script src="../js/main-alt.js"></script>
    <script src="../js/classie.js"></script>
    <script src="../js/jquery.nav.js"></script>      
    <script src="../js/jquery.themepunch.revolution.min.js"></script>
    <script src="../js/jquery.themepunch.tools.min.js"></script>
    

    <script>
        $(document).ready(function() {
            // This command is used to initialize some elements and make them work properly
            $.material.init();
             jQuery('.tp-banner').show().revolution({
              dottedOverlay: "none",
              delay: 16000,
              startwidth: 1170,
              startheight: 650,
              hideThumbs: 200,
              thumbWidth: 100,
              thumbHeight: 50,
              thumbAmount: 5,
              navigationType: "bullet",
              navigationArrows: "solo",
              navigationStyle: "preview4",
              touchenabled: "on",
              onHoverStop: "on",
              swipe_velocity: 0.7,
              swipe_min_touches: 1,
              swipe_max_touches: 1,
              drag_block_vertical: false,
              parallax: "mouse",
              parallaxBgFreeze: "on",
              parallaxLevels: [7, 4, 3, 2, 5, 4, 3, 2, 1, 0],
              keyboardNavigation: "off",
              navigationHAlign: "center",
              navigationVAlign: "bottom",
              navigationHOffset: 0,
              navigationVOffset: 20,
              soloArrowLeftHalign: "left",
              soloArrowLeftValign: "center",
              soloArrowLeftHOffset: 20,
              soloArrowLeftVOffset: 0,
              soloArrowRightHalign: "right",
              soloArrowRightValign: "center",
              soloArrowRightHOffset: 20,
              soloArrowRightVOffset: 0,
              shadow: 0,
              fullWidth: "on",
              fullScreen: "off",
              spinner: "spinner1",
              stopLoop: "off",
              stopAfterLoops: -1,
              stopAtSlide: -1,
              shuffle: "off",
              autoHeight: "off",
              forceFullWidth: "off",
              hideThumbsOnMobile: "off",
              hideNavDelayOnMobile: 1500,
              hideBulletsOnMobile: "off",
              hideArrowsOnMobile: "off",
              hideThumbsUnderResolution: 0,
              hideSliderAtLimit: 0,
              hideCaptionAtLimit: 0,
              hideAllCaptionAtLilmit: 0,
              startWithSlide: 0,
              videoJsPath: "rs-plugin/videojs/",
              fullScreenOffsetContainer: ""
            });
        });

    </script>

  </body>


</html>
