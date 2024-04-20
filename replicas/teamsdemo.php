
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

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> <!--edited-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="..."><!--edited-->

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

	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">


				<!-- ================================== TOP NAVIGATION ================================== -->

<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->


				<!-- ========================================== SECTION – HERO ========================================= -->


          <h1>Our Team</h1>
          		<p>"Our e-commerce website is powered by a talented and dedicated team of professionals who work tirelessly to ensure that our customers have the best possible online shopping experience. From web developers and designers to customer service representatives and marketing experts, our team is committed to delivering high-quality products and exceptional service to our valued customers."</p>

        	<!-- ============================================== css ============================================== -->

          <style media="screen">

          .container1 {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
          }

          .employee-card {
            width: 300px;
            margin: 20px;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            border-radius: 5px;
          }

          .employee-card:hover {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
          }

          .img-box {
            text-align: center;
            margin-top: 20px;
          }

          .img-box img {
            width: 80%;
            border: 50%;
          }

          .content-box {
            padding: 25px;
          }

          h2 {
            font-size: 24px;
            margin-top: 10px;
            margin-bottom: 5px;
          }

          h3 {
            font-size: 18px;
            color: #666;
            margin-bottom: 15px;
          }

          p {
            font-size: 14px;
            line-height: 1.5;
          }

          .social {
            display: flex;
            justify-content: center;
            margin-top: 20px;
          }

          .social a {
            display: inline-block;
            margin: 0 10px;
            color: #666;
            transition: color 0.3s;
          }

          .social a:hover {
            color: #333;
          }

          .social i {
            font-size: 20px;
          }

          aside {
            width: 200px;
            margin: 20px;
          }

          .designation {
            margin-bottom: 30px;
          }

          .designation h4 {
            font-size: 18px;
            margin-bottom: 10px;
          }

          .designation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
          }

          .designation li {
            margin-bottom: 5px;
            }

            <style>
        		p {
        			text-align: justify;
        			margin-left: 20px;
        			margin-right: 20px;
        		}
        </style>

        	<!-- ============================================== css ============================================== -->

        	<!-- ============================================== html ============================================== -->
          <div class="container1">
            <div class="social">



            </div>


            <div class="employee-card ceo">
              <div class="img-box">
                <img src="shakti1.jpg" alt="Shakti Pattanayak">
              </div>
              <div class="content-box">
                <h2>Shakti Pattanayak</h2>
                <h3>CEO</h3>
                <p>"Shakti Pattanayak, the CEO of our company, is a visionary leader with a passion for delivering exceptional customer experiences. With years of experience in the industry, he has a deep understanding of the ever-evolving needs of our customers and is committed to ensuring that our platform stays at the forefront of innovation. Under his guidance, we are continually pushing the boundaries of what's possible in the world of online retail, and we are excited to see where his vision will take us next.".</p>
                <div class="social">
                  <a href="https://www.linkedin.com/in/john-smith/"><i class="fab fa-linkedin"></i></a>
                  <a href="https://www.instagram.com/johnsmith/"><i class="fab fa-instagram"></i></a>
                </div>
              </div>
            </div>

            <div class="employee-card manager">
              <div class="img-box">
                <img src="jane-doe.jpg" alt="Santosh Behera">
              </div>
              <div class="content-box">
                <h2>Santosh Behera</h2>
                <h3>Manager</h3>
                <p>"Santosh Behera, our Manager at the Ecom, is a dynamic leader with a strong track record of driving growth and delivering results. With a deep understanding of the latest trends and technologies in the industry, he is constantly pushing our team to innovate and find new ways to improve the customer experience. Santosh's strategic vision and leadership have been critical to the success of our platform, and we are fortunate to have him on our team.</p>
                <div class="social">
                  <a href="https://www.linkedin.com/in/jane-doe/"><i class="fab fa-linkedin"></i></a>
                  <a href="https://www.instagram.com/janedoe/"><i class="fab fa-instagram"></i></a>
                </div>
              </div>
            </div>

            <div class="employee-card developer">
              <div class="img-box">
                <img src="james-smith.jpg" alt="Preetimayee Hembram">
              </div>
              <div class="content-box">
                <h2>Preetimayee Hembram</h2>
                <h3>Developer</h3>
                <p>Preetimayee, one of our talented developers at The Ecom, is a creative problem solver who brings a wealth of technical expertise to our team. Her strong coding skills and attention to detail are critical to ensuring that our platform runs smoothly and efficiently. Preetimayee's ability to develop and implement innovative solutions has been instrumental in driving our company's success, and we are grateful for her contributions to our team.</p>
                <div class="social">
                  <a href="https://www.linkedin.com/in/james-smith/" ><i class="fab fa-linkedin" > </i></a>
                  <a href="https://www.instagram.com/jamessmith/"><i class="fab fa-instagram"></i></a>
                </div>
              </div>
            </div>

            <!-- Add more employee cards here -->
            <div class="employee-card marketing">
              <div class="img-box">
                <img src="susmita.jpeg" alt="Susmita Das">
              </div>
            <div class="content-box">
              <h2>Susmita Das</h2>
              <h3>Marketing Head</h3>
              <p>Susmita, our Marketing Head at The Ecom, is a strategic thinker with a passion for delivering compelling marketing campaigns that resonate with our customers. With a deep understanding of the latest trends and techniques in digital marketing, she is constantly pushing our team to find new ways to reach and engage with our target audience. Susmita's leadership and vision have been critical to the success of our marketing efforts, and we are lucky to have her on our team.</p>
              <div class="social">
                <a href="https://www.linkedin.com/in/james-smith/" ><i class="fab fa-linkedin" > </i></a>
                <a href="https://www.instagram.com/jamessmith/"><i class="fab fa-instagram"></i></a>
              </div>
            </div>
          </div>

          <div class="employee-card hr">
            <div class="img-box">
              <img src="subhashree.jpeg" alt="Subhashree Moharana">
            </div>
          <div class="content-box">
            <h2>Subhashree Moharana</h2>
            <h3>Human Resource (HR)</h3>
            <p>Subhashree, our HR at The Ecom, is a dedicated professional with a wealth of experience in talent management and organizational development. With a strong understanding of the needs of our employees and the company's goals, she is instrumental in fostering a culture of collaboration, innovation, and growth. Subhashree's ability to attract, develop, and retain top talent has been critical to the success of our company, and we are fortunate to have her on our team.</p>
            <div class="social">
              <a href="https://www.linkedin.com/in/james-smith/" ><i class="fab fa-linkedin" > </i></a>
              <a href="https://www.instagram.com/jamessmith/"><i class="fab fa-instagram"></i></a>
            </div>
          </div>
        </div>
</div>

<!-- ========================================= SECTION – HERO : END ========================================= -->





<!-- ============================================== INFO BOXES ============================================== -->





<!-- ============================================== INFO BOXES : END ============================================== -->




		<!-- ============================================== SCROLL TABS ============================================== -->


















		<!-- ============================================== TABS : END ============================================== -->


</div >



<?php include('includes/brands-slider.php');?>
</div></div><!-- /.homebanner-holder --></div><!-- /.row -->

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
