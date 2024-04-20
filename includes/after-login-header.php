
<?php
//session_start();

?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled" >

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i><font color="red" size="4">Welcome -  <?php echo htmlentities($_SESSION['username']);?> </font></a></li>
        <li><a href="my-account.php"><i class="icon fa fa-user"></i> <font color="blue" size="3">My Account</font></a></li>
				<?php } ?>


					<li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i><font color="blue" size="3">Wishlist </font></a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i><font color="blue" size="3">My Cart </font></a></li>
					<?php if(strlen($_SESSION['login'])==0)
    {   ?>

<li><a href="./admin/"><i class="icon fa fa-sign-in"></i><font color="blue" size="3">Admin Login </font></a></li>
<?php }
else{ ?>

				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i><font color="red" size="3">Logout </font></a></li>
				<?php } ?>
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
						<a href="order-history.php" class="dropdown-toggle" ><span class="key"><font color="blue" size="3">My Orders</font></b></a>

					</li>


				</ul>
			</div>

			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->
