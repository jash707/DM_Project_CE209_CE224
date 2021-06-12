<?php
	
	session_start();
		use PHPMailer\PHPMailer\PHPMailer;
		use PHPMailer\PHPMailer\SMTP;
		use PHPMailer\PHPMailer\Exception;

		// Load Composer's autoloader
		require 'vendor/autoload.php';
	function smail($o,$l)
	{
	
		// Import PHPMailer classes into the global namespace
		// These must be at the top of your script, not inside a function
	

		// Instantiation and passing `true` enables exceptions
		$mail = new PHPMailer(true);

	
			//Server setting
			// Enable verbose debug output
			$mail->isSMTP();                                            // Send using SMTP
			$mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
			$mail->SMTPAuth   = true;                                   // Enable SMTP authentication
			$mail->Username   ='prodonate007@gmail.com';                     // SMTP username qmuzwncy@gmail.com
			$mail->Password   = 'p3NK755yidyCBdV';                             // SMTP password Mail@123
			$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
			$mail->Port       = 587;                                    // TCP port to connect to

			//Recipients
			$mail->setFrom('from@example.com', 'Restaurant');    // Add a recipient
			$mail->addAddress($o);               // Name is optional
			

			// Attachments
			//$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
			//$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name

			// Content
			$mail->isHTML(true);                                  // Set email format to HTML
			$mail->Subject = 'PASSWORD RESET';
			$mail->Body    = 'click on this to reset password<br><br>'.$l;
			$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

			$mail->send();
			
	}
	
	//smail('jash.tamakuwala@yahoo.com')
?>	