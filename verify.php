<?php
// session_start();
// include "index.php";
?>
<!DOCTYPE html>
<html>
<head>
  <title>Society Management System - OTP Verification</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    .container {
      max-width: 400px;
      margin: 50px auto;
    }
    .error {
      color: red;
    }
  </style>
</head>
<body>
<?php 
// include 'index.php'; 
?>
  <div class="container">
    <h2>OTP Verification</h2>
    <form  method="POST">
      <div class="form-group">
        <label for="otp">Enter OTP:</label>
        <input type="text" class="form-control" id="otp" name="otpp" required>
      </div>
      <button type="submit" class="btn btn-primary" name="verify">Verify</button>
    </form>
  </div>
  <?php include 'footer.php'; ?>
</body>
</html>
<?php
// session_start();
require_once 'config.php';
if (isset($_SESSION['user_id'])) 
{
    header('Location: dashboard.php');
    exit();
}


// Step 2: Handle OTP verification
if (isset($_POST['verify'])) {
  // include 'index.php';
    // Retrieve the entered OTP and email
    $enteredOTP = $_POST['otpp'];
    $email = $_SESSION['emaill'];
    $password = $_SESSION['password'];
    $otpp=$_SESSION['otp'];
    $_SESSION['user_id'] = $_SESSION['userid'];
    $_SESSION['user_role'] = $_SESSION['userrole'];
    $_SESSION['user_name'] = $_SESSION['username'];
    // $_SESSION['user_id'] = $user['id'];
    // $_SESSION['user_role'] = $user['role'];
    // $_SESSION['user_name'] = $user['name'];

    // // $sql="SELECT 'otp' FROM 'verify_otp' where `email`='$email'";
    // $result = $pdo->query($sql);
    // $row = $result->fetch_assoc();
    // $otpp = $row['otp'];
    // echo $otpp;
    // $sql = "SELECT `otp` FROM `verify_otp` WHERE `email` = '$email'";
    // $result = $pdo->query($sql);
    // $stmt = $pdo->prepare($sql);
    // $row = $result->fetch(PDO::FETCH_ASSOC);
    // $stmt->bindParam(':email', $email, PDO::PARAM_STR);
    // $stmt->execute();
    // $row = $stmt->fetch(PDO::FETCH_ASSOC);
    // $otpp = $row[`otp`];
    echo "Hii $email";
    echo $_SESSION['user_role'];
    echo $otpp;
   
    // echo $row;


    // try {
    //   $sql = "SELECT otp FROM verify_otp WHERE email = :email";
    //   $stmt = $pdo->prepare($sql);
    //   $stmt->bindParam(':email', $email, PDO::PARAM_STR);
    //   $stmt->execute();
    //   $row = $stmt->fetch(PDO::FETCH_ASSOC);
    //   if ($row) {
    //       $otpp = $row['otp'];
    //       echo $otpp;
    //   } else {
    //       echo "No OTP found for the given email.";
    //   }
  // } catch (PDOException $e) {
  //     echo "Error: " . $e->getMessage();
  // }
  

//     $sql = "SELECT otp FROM verify_otp WHERE email = '$email'";
// $result = $pdo->query($sql);

// if ($result) {
    // $row = $result->fetch(PDO::FETCH_ASSOC);
    // if ($row) {
        // $otpp = $row['otp'];
        // echo $otpp;
        // echo "OTP: $otp";
    // } else {
//         echo "No OTP found for the given email.";
//     }
// } else {
//     echo "Error executing the query.";
// }

          

    // echo $otp;
    // echo $enteredOTP;
    
        // Step 4: Compare the entered OTP with the stored OTP
        if ($enteredOTP == $otpp) {
          // header('Location: dashboard.php');
          

          // $sql = "INSERT INTO `verify_otp` (`otp`) VALUES ('$otp')";
          // header('Location: bills.php');

          // $stmt = $pdo->prepare('SELECT flat_id FROM allotments WHERE user_id = ?');
			    // $stmt->execute([$_SESSION['user_id']]);
			
        
          // $sql = "INSERT INTO `register` (`name`, `email`, `phone`, `address`, `password`, `otp`) VALUES ('$name', '$email1', '$phone', '$address', '$password', '$otp');";
          
          // if($result)
          // {
          //   echo "Data Inserted Successfully";
            
                if($_SESSION['userrole'] == 'admin')
                {
                    header('Location: dashboard.php');
                }
                else
                {
                    header('Location: bills.php');
                }
          }
        //  else
        //   {  
        //    echo "User Already Exits";
        //   }
          // exit;
          
          // if($user['role'] == 'user')
          //       {
                    // header('Location: bills.php');
          //       }
          //       else
          //       {
                    // header('Location: dashboard.php');
                    // echo $otpp;
          //       }
          //       exit;
            // OTP verification successful
            // Redirect to a success page or perform further actions
            // echo "<h2>Verification Successful!</h2>";
            // echo "<p>Thank you for verifying your OTP.</p>";
            // if($user['role'] == 'user')
                // {
                    // header('Location: bills.php');
                // }
                // else
                // {
                    // header('Location: dashboard.php');
                // }
            //     exit;
            // header("Location: userlogin.php");
            // echo "<h2>Verification Successful!</h2>";
            // echo "<p>Thank you for verifying your OTP.</p>";
        // } else {
            // OTP verification failed
            // Display an error message
    //         echo "<h2>Verification Failed:</h2>";
    //         echo $otpp;
    //         echo $enteredOTP;
    //         echo "<p>Invalid OTP. Please try again.</p>";
    //     }
    // } 
        }

    

?>
<script>

$(document).ready(function() {
</script>

