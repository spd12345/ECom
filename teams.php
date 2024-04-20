
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
                <img src="spd.jpg" alt="Shakti Pattanayak">
              </div>
              <div class="content-box">
                <h2>Shakti Pattanayak</h2>
                <h3>Project Manager</h3>
                <p>"As the project manager for our e-commerce website, Shakti expertly oversees all aspects of the development process, ensuring that our project is delivered on time and to the highest standards.
                  Shakti's exceptional project management skills and attention to detail have been instrumental in the success of our e-commerce platform, delivering exceptional results for our customers."</p>
                <div class="social">
                  <a href="https://www.linkedin.com/in/shakti-prasad-pattanayak-1aa694183/"><i class="icon fa fa-linkedin"></i></a>
                  <a href="https://www.instagram.com/_s_p_d__/"><i class="icon fa fa-instagram"></i></a>
                </div>
              </div>
            </div>



            <div class="employee-card developer">
              <div class="img-box">
                <img src="preeti.jpg" alt="Preetimayee Hembram">
              </div>
              <div class="content-box">
                <h2>Preetimayee Hembram</h2>
                <h3>Backend Developer</h3>
                <p>"Preetimayee is a skilled backend developer for our e-commerce platform, responsible for ensuring the server-side functionality runs smoothly and efficiently.
                  With her expertise in server-side scripting and database management using MYSQL, Preeti plays a crucial role in the development and maintenance of our e-commerce website, enabling us to provide our customers with a seamless online shopping experience."</p>
                <div class="social">
                  <a href="https://www.linkedin.com/in/preeti-mayee-hembram-351a86251/" ><i class="icon fa fa-linkedin" > </i></a>
                  <a href="https://www.instagram.com/_.preety_09._/"><i class="icon fa fa-instagram"></i></a>
                </div>
              </div>
            </div>

            <div class="employee-card marketing">
              <div class="img-box">
                <img src="susmita.jpeg" alt="Susmita Das">
              </div>
            <div class="content-box">
              <h2>Susmita Das</h2>
              <h3>Frontend Developer</h3>
              <p>"As a frontend developer for our e-commerce platform, Susmita creates intuitive and engaging user interfaces that enable our customers to easily navigate and interact with our website.
                Susmita's proficiency in HTML, CSS, and JavaScript allows her to design and develop responsive and visually appealing interfaces that enhance the overall user experience of our e-commerce platform."</p>
              <div class="social">
                <a href="https://www.linkedin.com/in/susmita-das-4555a41b5/" ><i class="icon fa fa-linkedin" > </i></a>
                <a href="https://www.instagram.com/27_susmita_das/"><i class="icon fa fa-instagram"></i></a>
              </div>
            </div>
          </div>



            <!-- Add more employee cards here -->
            <div class="employee-card manager">
              <div class="img-box">
                <img src="santosh1.jpeg" alt="Santosh Behera">
              </div>
              <div class="content-box">
                <h2>Santosh Behera</h2>
                <h3>Quality Assurance (QA) Tester</h3>
                <p>"Santosh's meticulous attention to detail and rigorous testing ensure that our e-commerce platform is free from any bugs, errors, or glitches, providing our customers with a seamless and reliable online shopping experience.
                  As a QA Tester for our e-commerce website, Santosh's expertise in software testing and quality assurance enables us to identify and rectify any issues in the development process, ensuring that our platform operates at the highest level of performance and functionality."</p>
                <div class="social">
                  <a href="#"><i class="icon fa fa-linkedin"></i></a>
                  <a href="https://www.instagram.com/santosh.sania10/"><i class="icon fa fa-instagram"></i></a>
                </div>
              </div>
            </div>


          <div class="employee-card hr">
            <div class="img-box">
              <img src="subhashree1.jpeg" alt="Subhashree Moharana">
            </div>
          <div class="content-box">
            <h2>Subhashree Moharana</h2>
            <h3>Content Creator/Copywriter</h3>
            <p>"As our Content Creator/Copywriter, Subhashree crafts engaging and compelling copy that resonates with our customers and communicates our brand message effectively.
              With her exceptional writing skills and understanding of digital marketing, Subhashree produces high-quality and SEO-friendly content that not only drives traffic to our e-commerce website but also converts visitors into loyal customers."</p>
            <div class="social">
              <a href="#" ><i class="icon fa fa-linkedin" > </i></a>
              <a href="#"><i class="icon fa fa-instagram"></i></a>
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
