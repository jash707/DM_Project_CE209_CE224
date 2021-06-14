<?php
	session_start();
	date_default_timezone_set('Asia/Kolkata');
	
  if(isset($_SESSION['user'])){
    require 'db.php';
    $q = "select * from users where userid = '".$_SESSION['user']."'";
    $exe = mysqli_query($con,$q);
    while($row = mysqli_fetch_array($exe)){
      $name = $row['userid'];
      $tel = $row['contact'];
      $mail = $row['email'];
    }

    if(isset($_SESSION['cart'])){
      //print_r($_SESSION['cart']);
    }
    else{
      header("location:takeaway.php");
    }
    if(count($_SESSION['cart']) > 0){}
    else{
      header("location:takeaway.php");
    }
  }else{
    header("location:Login_v20/login.php");
  }
	if(isset($_SESSION['exit'])){
	    header("location:takeaway.php");
	}
?>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    
     <link rel="shortcut icon" href="images/mint.png" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <!-- Site Metas -->
    <title>  Restaurant  </title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
     <link rel="shortcut icon" href="images/mint.png" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Menu Items -->
    <link rel="stylesheet" href="css/menu.css" >
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
		<link rel="stylesheet" href="css/c-items.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
  <style>
    .disable{
      background-color: #d9d9d9; 
      border: 1px solid black;
      margin-right: 3px;
      margin-left: 3px;
      }

  </style>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>
<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
						<li class="nav-item active"><a class="nav-link" href="takeaway.php">Takeaway</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

    <div style="padding:70px;">
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="content-wrap-1">
			    <a href="takeaway.php"><i class="fa fa-utensils icon1" style="color: #0cc2bf; border: 2px solid #0cc2bf"></i></a>
					<a href="takeaway-1.php"><i class="fa fa-cart-plus icon1" style="color: #0cc2bf; border: 2px solid #0cc2bf"></i></a>
			    <a href="takeaway-2.php"><i class="fas fa-user-circle icon1" style="color: #0cc2bf; border: 2px solid #0cc2bf"></i></a>

    	</div>
		</div>
		</div>
	</div>
	<!-- Products Section -->
    <section class="second-sect">
        <div class="main-section-categ">
            <div class="main-section-container">
                <div class="heading-title text-center">
                    <h1 style="margin-bottom:0px; font-size: 32px; color: #0cc2bf">Order Confirmation</h1>
										<p>Please fill below details to book the order.</p>
				</div>
            </div>
        </div>
    </section>
   
            <div style="padding-top:40px; padding-left: 40px; padding-right: 40px; font-size:60px; text-align:center">
        		<h1> Enter Personal Details <h1>
        	</div>
        	<?php   
            	require 'db.php';
            	$total = $_SESSION['total'];
        
            ?>
            <!-- Personal Details -->
            <div class="contact-box">
        			<div class="container">
        				<div class="row">
        					<div class="col-lg-12">
        						<form id="contactForm" method="post" action="#">
        							<div class="row">
        								<div class="col-md-12">
        									<span class="field-title" > Name : </span>
        									<div class="form-group">
        										<input type="text" class="form-control disable" id="name" name="uname" placeholder="Name " required data-error="Please Enter Name" value="<?php echo $name ?>" disabled>
        										<div class="help-block with-errors"></div>
        									</div>
        								</div>
        								<div class="col-md-12">
        									<span class="field-title"> Email-id : </span>
        									<div class="form-group">
        										<input type="email" placeholder="Enter Email-id" id="mail" class="form-control disable" name="e-mail" required data-error="Please Enter Mail-Id"  value="<?php echo $mail ?>" disabled>
        										<div class="help-block with-errors"></div>
        									</div>
        								</div>
        								<div class="col-md-12">
        									<span class="field-title"> Mobile No : </span>
        									<div class="form-group">
                                                <input type="tel" placeholder="84690 00683" id="mobile" class="form-control disable" name="mobile_no" required data-error="Please Enter Mobile No"  value="<?php echo $tel ?>" disabled>
        										<div class="help-block with-errors"></div>
        									</div>
                                        </div>
        								
                                        </div>
                                        <div class="col-md-12">
        									<span class="field-title"> Takeaway / Pickup Time : </span>
        									<div class="form-group">
        										<input type="time" placeholder="Select Time" id="time" class="form-control" name="b-time" required data-error="Please Enter Time">
        										<div class="help-block with-errors"></div>
        									</div>
        								</div>
                                        <div class="col-md-12">
        									<span class="field-title"> Total Bill (Inclusive Of Tax): </span>
        									<div class="form-group">
        										<input type="text"  id="" class="form-control" name="total" readonly value="<?php echo number_format($total,2) ; ?>" style="background-color: #d9d9d9; border: 1px solid black;">
        										<div class="help-block with-errors"></div>
        									</div>
        								</div>
        								<div class="col-md-12">
        									<div class="submit-button text-center">
        										<input type="submit" class="btn btn-common" id="checkAvability" name="place" value="Place Order" />
        										<div id="msgSubmit" class="h3 text-center hidden"></div>
        										<div class="clearfix"></div>
        									</div>
        								</div>
        								</div>
        							</div>
        						</form>
					</div>
				</div>
			</div>
		</div>

		<?php   
			require 'db.php';
			if(isset($_POST['place']))
			{
			    if(count($_SESSION['cart']) > 0 ){
    				$total = $_POST['total'];
    				$time = $_POST['b-time'];
    				$today = date('Y-m-d H:i:s');
                                   
                        if($name != '' && $mail != '' && $tel != ''  && $total != '' && $time != '')
                        {
    				    
        					$q = "insert into takeaway_user (name,email,mobile_no,date_time,total_bill,status,time_of_delivery,payment_mode)
        						  values('$name','$mail','$tel','$today','$total',0,'$time','cash') ";
        					
        					$exec = mysqli_query($con,$q);
    					
        					if($exec)
        					{
        						
        						$exec2 = mysqli_query($con,"select max(tuid) from takeaway_user");
        						$r = mysqli_fetch_array($exec2);
        						$tid = $r[0];
        						foreach($_SESSION['cart'] as $keys => $value)
        						{
        							$pid = $value['product_id'];
        							$quantity = $value['item_quantity'];
        							$o_type = 'takeaway';
        							
        							$q1 = "insert into food_order(userid,mid,quantity,order_type) values($tid,$pid,'$quantity','$o_type')";
        							$e = mysqli_query($con,$q1);
        							
        							if(!($e)){
        							   // email($tid,$mail);
        							}
        							else{
                        echo mysqli_error($con);
                      }
        						}
								    echo "<script>alert('Order Booked');</script>";
									  if(1){
										  session_destroy();
										  //header("location:takeaway.php");
										  $_SESSION['exit'] = '1';
										}
        					}
        					else{
                    echo mysqli_error($con);
                  }
                }	
    				
                ?>
				<div class="text-center" style="margin-top: 2%;">
    							    <h2 class="text-warning">
    								    <strong id="showResvered">
    								    <?php 
			                                }
			}
                                         ?>
                                        </strong>
    							    </h2>
    						    </div>

	<div style="padding:100px;">
	</div>

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4 arrow-right">
					<i class="fa fa-volume-control-phone"></i>
					<div class="overflow-hidden">
						<h4>Phone</h4>
						<p class="lead">
							97239 12479
						</p>
					</div>
				</div>
				<div class="col-md-4 arrow-right">
					<i class="fa fa-envelope"></i>
					<div class="overflow-hidden">
						<h4>Email</h4>
						<p class="lead">
							restaurant@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div class="overflow-hidden">
						<h4>Location</h4>
						<p class="lead">
							New City Light Road, Surat
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">   </p>
					<p class="lead"><a href="tel:97239 12479">97239 12479</p>
					<p><a href="mailto:restaurant@gmail.com"> restaurant@gmail.com</a></p>
				</div>
				<div class="col-lg-4 col-md-6">
					<h3>Opening hours</h3>
					<p><span class="text-color">Restaurant (Takeaway) : </span> 10:30AM - 3:30PM, 7PM - 11PM</p>
				</div>
			</div>
		</div>

		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">Rights Reserved. &copy; 2021 <a href="./index.php"></p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->


	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
