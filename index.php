<?php
// session_start();
?>
<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer.php';
require 'SMTP.php';
require 'Exception.php';
// require 'connection.php';
// Generate a random 6-digit OTP
function generateOTP() {
    return rand(100000, 999999);


}

// Send the OTP via email or SMS
function sendOTP($email, $otp) {
    // Implement your code to send the OTP via email or SMS here
    $mail = new PHPMailer(true);

    try {
    // SMTP configuration
      $mail->isSMTP();
      $mail->Host = 'smtp.gmail.com';
      $mail->Port = 587;
      $mail->SMTPSecure = 'tls';
      $mail->SMTPAuth = true;
      $mail->AuthType = 'LOGIN';
      $mail->Username = 'aniketmetkari14@gmail.com';
      $mail->Password = 'kfzpkfpxobmxivcu';

    // Set the sender and recipient
      $mail->setFrom('aniketmetkari14@gmail.com', 'Society Management System');
      $mail->addAddress($email, 'Dear User');

    // Set email content
      $mail->Subject = 'Your Otp for Society Management System ';
      $mail->Body = $otp;
      
    // Send the email
      $mail->send();
      
    //   $sql = "INSERT INTO `verify_otp`(`otp`, `email`) VALUES ($otp,$email)";
    //   $pdo->prepare($sql)->execute();
    //   $stmt = $pdo->prepare("INSERT INTO verify_otp (otp, email) VALUES ($otp, $email)");

	//   $stmt->execute();

      echo 'OTP sent successfully';
  } catch (Exception $e) {
    echo 'OTP could not be sent. Error: ', $mail->ErrorInfo;
  }
      // For demonstration purposes, we'll just display it
    // echo "Your OTP: " . $otp;
  }
  ?>



<?php

// Check if the system setup is complete

require_once 'config.php';

if (isset($_SESSION['userid'])) 
{
    header('Location: dashboard.php');
    exit();
}

$errorMessage = '';

if(isset($_POST['btn_login']))
{
    // Get the email and password entered by the user
    $email = $_POST['email'];
    
    $password = $_POST['password'];

    $email = $_POST['email'];
    $password = $_POST['password'];

    // Validate email address format
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) 
    {
        $errors[] = 'Please enter a valid email address.';
    }

    // Validate password field is not empty
    if (empty($password)) 
    {
        $errors[] = 'Please enter a password.';
    }

    // If there are no validation errors, attempt to log in
    if(empty($errors)) 
    {

        // Query the database to see if a user with that username exists
        $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$email]);
        $user = $stmt->fetch();

        // If the user exists, retrieve their password hash from the database
        if ($user) 
        {
            
            $passwordHash = $user['password'];

            // Use the password_verify function to check if the entered password matches the password hash
            if (password_verify($password, $passwordHash)) 
            {
                $otp = generateOTP();
                sendOTP($email, $otp);
                // $sql = "UPDATE `users` SET `otp`='$otp' WHERE 'email'='$email'";
                // // $sql = "INSERT INTO `users` (`otp`) VALUES ('$otp') where 'email'='$email'";
                $sql = "UPDATE `verify_otp` SET `otp`='$otp' where `email`='$email'";
                $result = $pdo->query($sql);
         
                if($result){
          
                $_SESSION['emaill']=$_POST['email'];
                $_SESSION['password'] = $_POST['password'];
                $_SESSION['otp'] = $otp;
                // Password is correct, log the user in
                $_SESSION['userid'] = $user['id'];
                $_SESSION['userrole'] = $user['role'];
                $_SESSION['username'] = $user['name'];

                header("Location: verify.php");
                // echo $_SESSION['emaill'];
                }
                // if($user['role'] == 'user')
                // {
                //     header('Location: bills.php');
                // }
                // else
                // {
                //     header('Location: dashboard.php');
                // }
                // exit;
            } 
            else
            {
                // Password is incorrect, show an error message
                $errors[] = "Invalid password";
            }
        } 
        else 
        {
            // User not found, show an error message
            $errors[] = "email not found";
        }
    }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
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
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/society4.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
                    Society Management
                
					<!-- Account Login -->
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" id="login-form" method="post">

					<div class="wrap-input100 validate-input" data-validate = "Enter Email">
						<input class="input100" type="text" id="email" name="email" placeholder="Enter Email">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                        <div class="invalid-feedback">Please enter a valid email address.</div>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" id="password" name="password" placeholder="Enter Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
                        <div class="invalid-feedback">Please enter a password.</div>
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button type="submit" name="btn_login" class="login100-form-btn" >
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
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






<script>

$(document).ready(function() {
  // Disable HTML5 validation
  /*$('#login-form').attr('novalidate', 'novalidate');

  // Validate form input on submit
  $('#login-form').on('submit', function(e) {
    // Prevent form submission
    e.preventDefault();

    // Remove any existing error messages
    $('#email').removeClass('is-invalid');
    $('#password').removeClass('is-invalid');
    $('.invalid-feedback').hide();

    // Get form input values
    var email = $('#email').val().trim();
    var password = $('#password').val().trim();

    // Validate email address format
    if (!isValidEmail(email)) {
      $('#email').addClass('is-invalid');
      $('#email').next('.invalid-feedback').show();
      return;
    }

    // Validate password field is not empty
    if (password === '') {
      $('#password').addClass('is-invalid');
      $('#password').next('.invalid-feedback').show();
      return;
    }

    // Submit form if input is valid
    this.submit();
  });
});

// Function to validate email address format
function isValidEmail(email) {
  var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
  return emailRegex.test(email);
}*/

</script>