
<?php
session_start();
error_reporting(0);
include("include/config.php");
if(isset($_POST['submit']))
{
	$username=$_POST['username'];
	$password=md5($_POST['password']);
$ret=mysqli_query($con,"SELECT * FROM admin WHERE username='$username' and password='$password'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$extra="change-password.php";//
$_SESSION['alogin']=$_POST['username'];
$_SESSION['id']=$num['id'];
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
else
{
$_SESSION['errmsg']="Invalid username or password";
$extra="index.php";
$host  = $_SERVER['HTTP_HOST'];
$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>E-Commerce | Admin Login</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme1.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	<link type="text/css "href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

	<style>
		.bgimg-1 {
		background-image: url("ec.jpeg");
		height: 100%;
		position: relative;
		opacity: 0.65;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
	}

	body, html {
	  height: 100%;
	  margin: 0;
	  font: 400 15px/1.8 "Lato", sans-serif;
	  color: #777;
	}

	</style>

</head>
<body>



<div class="bgimg-1">






	<div class="navbar navbar-fixed-top" >
		<div class="navbar-inner" style="background-color:#ffffff">
			<div  style="background:#ffffff"; class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="#"><h2 style="text-color:blue";>E-Commerce || Admin Login </h2>	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">

					<ul class="nav pull-right">
						<style>
						h3 {
									font-size: 20px;
									font-weight: bold;
									text-align: center;
									margin-bottom: 20px;
									color: #008000;
									text-shadow: 3px 3px 6px rgba(0, 0, 255, 0.3);
									text-rendering: optimizeLegibility;
								}
						</style>
						<br>
						<li><h3 ><a href="http://localhost/ECom/" >Back to Website	</a></h2></li>



					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->






	<style>
	/* Styling for the body */
	body {
	  background-color: #fafafa;
	}

	/* Styling for the form container */
	.login-container {
	  width: 100%;
	  max-width: 400px;
	  margin: 0 auto;
	  background-color: #ffffff;
	  border-radius: 10px;
	  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	  padding: 20px;
	}


	/* Styling for the form header */
	.login-header {
	  text-align: center;
	  font-size: 30px;
	  color: #333;
	  margin-bottom: 20px;
	  text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.1);
	}

	/* Styling for the input fields */
	.input-field {
	  width: 100%;
	  padding: 10px;
	  margin-bottom: 20px;
	  border: none;
	  border-radius: 5px;
	  background-color: #f5f5f5;
	  color: #333;
	  font-size: 18px;
	  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
	}

	/* Styling for the submit button */
	.submit-btn {
	  width: 100%;
		align: center;
	  padding: 10px;
	  border: none;
	  border-radius: 5px;
	  background-color:	#228B22;
	  color: #fff;
	  font-size: 20px;
	  cursor: pointer;
	  transition: all 0.3s ease-in-out;
	  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	}

	.submit-btn:hover {
	  background-color: #0F7692;
	}

	/* Styling for the form labels */
	label {
	  font-size: 16px;
	  font-weight: bold;
	  color: #333;
	}

	/* Styling for the form links */
	a {
	  color: #0F7692;
	  text-decoration: none;
	  transition: all 0.3s ease-in-out;
	}

	a:hover {
	  color: #333;
	}

	/* Styling for the form error messages */
	.error-msg {
	  color: #f44336;
	  font-size: 16px;
	  margin-bottom: 10px;
	}
	</style>
<br><br>
	<div class="login-container">
		 <h2 class="login-header">Sign in</h2>
	  <form method="post">
	    <label for="username">Username</label>
	    <input type="username" name="username" class="input-field" placeholder="Enter your username" autocomplete="off">
	    <label for="password">Password</label>
	    <input type="password" name="password" class="input-field" placeholder="Enter your password" autocomplete="off">
	    <button type="submit" name="submit" class="submit-btn">login</button>
	    <div class="error-msg"><?php echo htmlentities($_SESSION['errmsg']); ?><?php echo htmlentities($_SESSION['errmsg']="");?></div>
	    	  </form>
	</div>
</div>

	<!--/.wrapper-->
</div>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</body>
