<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_GET['action']) && $_GET['action']=="add"){
	$id=intval($_GET['id']);
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity']++;
	}else{
		$sql_p="SELECT * FROM products WHERE id={$id}";
		$query_p=mysqli_query($con,$sql_p);
		if(mysqli_num_rows($query_p)!=0){
			$row_p=mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']]=array("quantity" => 1, "price" => $row_p['productPrice']);

		}else{
			$message="Product ID is invalid";
		}
	}
		echo "<script>alert('Product has been added to the cart')</script>";
		echo "<script type='text/javascript'> document.location ='my-cart.php'; </script>";
}


?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>E-Commerce Home </title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/black.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">

	</head>
    <body class="cnt-home">



		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
	<!--new dt02.04.2023 -->
			<?php if(strlen($_SESSION['login']))
		{
		 include('includes/after-login-header.php');

		}
		else {
		include('includes/top-header.php');	// code...
		}?>
					<?php if(strlen($_SESSION['login'])==0)
		       ?>
	<!--new dt02.04.2023 -->
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">

			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
	<?php include('includes/side-menu.php');?>
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->

			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION – HERO ========================================= -->
			<div id="hero" class="homepage-slider3">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">




		<div class="full-width-slider">
		 <div class="item full-width-slider" style="background-image: url(assets/images/sliders/placement.png);">
		 </div>
	 </div>

	 <div class="full-width-slider">
		<div class="item full-width-slider" style="background-image: url(assets/images/sliders/mobile.jpg);">
		</div>
	</div>


	</div><!-- /.owl-carousel -->
</div>

<!-- ========================================= SECTION – HERO : END ========================================= -->





<!-- ============================================== INFO BOXES ============================================== -->





<!-- ============================================== INFO BOXES : END ============================================== -->
			</div><!-- /.homebanner-holder -->

		</div><!-- /.row -->

		<!-- ============================================== SCROLL TABS ============================================== -->

	<h2 style="color:blue; "> Recruiters in Top Companies   </h2>


<h4> How does it work?</h4>
<p align="justify">Our recruiter service is specially formulated to cater the needs of recruitment across various industries and location. You can select a plan basis your requirement from our list of extensive packages listed. In order to continue with the selected plan, you must register with us by filling a form or sign in through your employer login details. You can also opt for our demo session to test-run our online recruitment services to take a sneak peak at the better hiring process.Opportunities for Students
 the spirit of innovation is part of our DNA. We strive to hire the brightest minds from universities all around the globe, and we have technical and non-technical career opportunities throughout company for students from all backgrounds.  customers represent a wide array of gender identities, races, ethnicities, abilities, ages, religions, sexual orientations, military status, backgrounds, and political views. We believe it's also critical for Amazon employees to reflect these diverse perspectives, which helps us in our mission to be earth’s most customer-centric company.

We’re looking for current undergraduate and graduate students for internship and full-time opportunities in a variety of roles, including software development engineers (SDEs), support engineers, product managers, operations managers, applied scientists, vendor managers, cloud support associates, sales specialists, financial analysts, and more. We hire for teams , consumer, devices, finance, legal, operations, and recruiting.

From the start, you’ll do meaningful work alongside peers and leaders – diving deep into projects, programs, and services that impact millions of customers.you're given the opportunity to chart your own path by owning your development, your career, and your future.Our Operations and award-winning Customer Service teams are at the heart of our mission to be Earth’s most customer-centric company. Supported by innovative world-class technologies, our global network of FCs, delivery stations, and customer service teams are dedicated to delighting customers worldwide. We’re constantly creating and building new ideas, services, and products that make life easier for millions of people around the world.

The evolution of company has been driven by innovation. It’s part of our DNA. We are doing things every day that have never been done before—providing a huge selection of products and continuing to fulfill orders quickly. We accomplish this by solving complex problems with ingenuity and simplicity. Together we're making history, and the good news is that we've only just begun.</p>











		<!-- ============================================== TABS : END ============================================== -->




<?php include('includes/brands-slider.php');?>
</div>
</div>
<?php include('includes/footer.php');?>

	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->

	<script src="switchstylesheet/switchstylesheet.js"></script>

	<script>
		$(document).ready(function(){
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->



</body>
</html>
