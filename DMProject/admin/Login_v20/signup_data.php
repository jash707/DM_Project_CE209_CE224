<?php
		session_start();
		if(isset($_POST['signup'])){
			require 'db.php';
			if($_POST['pass']== $_POST['repass']){
			$q="insert into users values ('".$_POST['username']."','".$_POST['email']."','".$_POST['cnt']."','".$_POST['pass']."')";
			$exe=mysqli_query($con,$q);
			if($exe){
				$_SESSION["s"]=1;
				header("location: login.php");
			}
			else{
				echo mysqli_error($con);
			}
			}
			else{
				echo '<script>alert("Enter same password") </script>';
			}
		}
		?>