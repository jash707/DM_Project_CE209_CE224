<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<style>
.box{
		background-color: white;
		height: 80%;
		width: 40%;
		border-radius: 10px;
		color: black;
		padding: 2%;
	}
</style>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-b-160 p-t-50 box">
				<form method="POST" action="signup_data.php" class="login100-form validate-form">
					<span style="color: black; "class="login100-form-title p-b-43">
						Sign Up
					</span>
					
					<div class="wrap-input100  validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="username" required />
						<span class="label-input100">Username</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="pass" required />
						<span class="label-input100">Password</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Re-enter Password is required">
						<input class="input100" type="password" name="repass" required />
						<span class="label-input100">Re-enter Password</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Email is required">
						<input class="input100" type="mail" name="email" required />
						<span class="label-input100">Email</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Contact Number is required">
						<input class="input100" type="tel" name="cnt" required />
						<span class="label-input100">Contact Number</span>
					</div>
					<div class="container-login100-form-btn">
						<button name="signup" class="login100-form-btn">
							Sign up
						</button>
					</div>
					
					<div   class="text-center w-full p-t-23">
						<a style="color: black; margin-left:10px; " href="login.php" class="txt1">
							Login?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>