<div class="span3" style="background-color:green;">
<div class="sidebar" style="background-color:green;" >


<ul class="widget widget-menu unstyled">
							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Orders Details Here
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="todays-orders.php"><i class="icon-tasks"></i>Today's Orders
  <?php
 $f1="00:00:00";
$from=date('Y-m-d')." ".$f1;
$t1="23:59:59";
$to=date('Y-m-d')." ".$t1;
 $result = mysqli_query($con,"SELECT * FROM Orders where orderDate Between '$from' and '$to'");
$num_rows1 = mysqli_num_rows($result);
{
?>
											<b class="label orange pull-right"><?php echo htmlentities($num_rows1); ?></b>
											<?php } ?>
										</a>
									</li>
									<li>
										<a href="pending-orders.php">
											<i class="icon-tasks"></i>
											Pending Orders
										<?php	
	$status='Delivered';									 
$ret = mysqli_query($con,"SELECT * FROM Orders where orderStatus!='$status' || orderStatus is null ");
$num = mysqli_num_rows($ret);
{?><b class="label orange pull-right"><?php echo htmlentities($num); ?></b>
<?php } ?>
										</a>
									</li>
									<li>
										<a href="delivered-orders.php">
											<i class="icon-inbox"></i>
											Delivered Orders
								<?php	
	$status='Delivered';									 
$rt = mysqli_query($con,"SELECT * FROM Orders where orderStatus='$status'");
$num1 = mysqli_num_rows($rt);
{?><b class="label green pull-right"><?php echo htmlentities($num1); ?></b>
<?php } ?>

										</a>
									</li>
								</ul>
							</li>
							
							<li>
								<a href="manage-users.php">
									<i class="menu-icon icon-group"></i>
									Customers Details
								</a>
							</li>
						</ul>


						<ul class="widget widget-menu unstyled">
                                <li><a href="category.php"><i class="menu-icon icon-tasks"></i> New  Category Entry </a></li>
                                <li><a href="subcategory.php"><i class="menu-icon icon-tasks"></i>New Sub-Category Entry </a></li>
                                <li><a href="insert-product.php"><i class="menu-icon icon-paste"></i>New Product Entry </a></li>
                                <li><a href="manage-products.php"><i class="menu-icon icon-table"></i>Products List </a></li>
                        
                            </ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							<li><a href="user-logs.php"><i class="menu-icon icon-tasks"></i>Customer Login Info. </a></li>
							
							<li>
								<a href="logout.php">
									<i class="menu-icon icon-signout"></i>
									Admin Logout
								</a>
							</li>
						</ul>

					</div><!--/.sidebar-->
				</div><!--/.span3-->
