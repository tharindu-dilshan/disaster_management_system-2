<?php
include("../db/dbConfig.php");
session_start();
?>
<html>
<head>
    <title>Hazard360 | DISASTER REGION</title>
    <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <script src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
</head>
<body>
<div class="row" style="width: 100%">
    <div class="col-sm-10"><p style="padding:10px;font-size: 25px;margin-bottom: 0px;"><b>Hazard360 | DISASTER REGION</b></p></div>
    <div class="col-sm-2" style="padding-right: 0px"><?php $logged_user = isset($_SESSION['login_user'])?$_SESSION['login_user']:'';
        if (!empty($logged_user)) {
            $ses_sql = mysqli_query($db, "select name from user where user_name = '$logged_user' ");
            $row = mysqli_fetch_array($ses_sql, MYSQLI_ASSOC);
            $logged_name = $row['name'];
            echo '<p style="padding:18px;padding-right: 0px;font-size: 15px;margin-bottom: 0px;float: right;"><b>Welcome '.$logged_name.'!</b></p>';
        }
        ?></div>
</div>
<ul id="nav">
    <?php
    if (!empty($_SESSION['login_user'])) {
        echo '<li><a href="../home.php">HOME</a></li>
        <li style="float:right"><a href="../home.php?signout=1">SIGN OUT</a></li>';
    }else{
        echo '<li style="float:right"><a href="javascript:$(\'#loginModal\').modal(\'show\');">SIGN IN</a></li>';
    }
    ?>
    <li class="active" style="float:right"><a href="about-us.php">ABOUT US</a></li>
    <li style="float:right"><a href="help.php">HELP</a></li>
</ul>
<div id="memb">

<center>

  <table id="t03">
    <tr>
      <td><font size="4">Submitting reports to the Council from time to time and whenever required by the Council in regard to its activities.
        <br>This Act also provides for a framework for disaster risk management in Sri Lanka and addresses disaster management (DM) holistically, leading
        to a policy shift from response based mechanisms to a proactive approach towards Disaster Risk Managment.
      <br>In terms of the Act following hazards come under the purview of Disaster Management:</td>
    </tr>

  </tr>
  <tr><td style="text-align:center"><font size="4"><br>Floods</td></tr>
  <tr><td style="text-align:center"><font size="4">Landslides</td></tr>
  <tr><td style="text-align:center"><font size="4">Industrial Hazards</td></tr>
  <tr><td style="text-align:center"><font size="4">Tsunami (Seismic Wave)</td></tr>
  <tr><td style="text-align:center"><font size="4">Air Hazards</td></tr>
  <tr><td style="text-align:center"><font size="4">Fire</td></tr>
  <tr><td style="text-align:center"><font size="4">Epidemics</td></tr>
  <tr><td style="text-align:center"><font size="4">Explosions</td></tr>
  <tr><td style="text-align:center"><font size="4">Air Raids</td></tr>
  <tr><td style="text-align:center"><font size="4">Civil or Internal Strife</td></tr>
  <tr><td style="text-align:center"><font size="4">Chemical Accidents</td></tr>
  <tr><td style="text-align:center"><font size="4">Radiological Emergency</td></tr>
  <tr><td style="text-align:center"><font size="4">Oil Spills</td></tr>
  <tr><td style="text-align:center"><font size="4">Nuclear Disaster</td></tr>
  <tr><td style="text-align:center"><font size="4">Urban and Forest Fire</td></tr>
  <tr><td style="text-align:center"><font size="4">Coastal Erosion</td></tr>
  <tr><td style="text-align:center"><font size="4">Tornadoes, Lightening Strikes and Severe Thunder Storms</td></tr>


  <tr>
  	  <th style="text-align:center"><font size="5"><br>Our Vision</th>

  </tr>
  <tr>
    <td style="text-align:center"><font size="4"><br> Safer communities and sustainable development in Sri Lanka.</td>

  </tr>
  <tr>
    	  <th style="text-align:center"><font size="5"><br>Our Mission</th>

  </tr>
  <tr>
    <td><br>To create a culture of safety among communities and the nation at large through systematic management of natural, technological and man-made disaster risks.</td>

  </tr>
</table>
    <h1>Group Members</h1><br>

    <table id="t01">
  <tr>
    <td>Illangasinghe I M Bimsara</td>
    <td></td>
    <td>10602218</td>
  </tr>
  <tr>
    <td>Malith Boralugoda</td>
    <td></td>
    <td>10602194</td>
  </tr>
  <tr>
    <td>Kaushalya L.k Ravini</td>
    <td></td>
    <td>10601949</td>
  </tr>
  <tr>
    <td>Kavindya H.P Senuri</td>
    <td></td>
    <td>10601950</td>
  </tr>
  <tr>
    <td>Nethmi Divya Gunawardene</td>
    <td></td>
    <td>10602203</td>
  </tr>
</table>


</center>
</div>
</body>
</html>
