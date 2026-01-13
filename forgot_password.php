<?php

include 'php/connect.php';

session_start();

if(isset($_POST['submit'])){
   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   
   // Check if new_password is set
   if(isset($_POST['new_password'])) { // Assuming the password is hashed in the database
      $new_password = sha1($_POST['new_password']); // Assuming the password is hashed in the database
      
      // Check if the email exists in the database
      $select_user = $conn->prepare("SELECT * FROM `user` WHERE email = ?");
      $select_user->execute([$email]);
      $user = $select_user->fetch(PDO::FETCH_ASSOC);

      if($user){
         // Update the password
         $update_password = $conn->prepare("UPDATE `user` SET password = ? WHERE email = ?");
         $update_password->execute([$new_password, $email]);
         echo '<script>alert("Password updated successfully.")</script>';
         header('location:login.php');
      } else {
         echo '<script>alert("The provided email address is not registered.")</script>';
      }
   } else {
      // Handle case where new_password is not set
      echo '<script>alert("Please fill new password.")</script>';
      exit; // Stop execution if required fields are missing
   }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>Login</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
   <link href="css/css/login.css" rel="stylesheet" />
   <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>

<div class="login-container">
    <div class="login-header">
        <h2>Forgot Password?</h2>
    </div>
    <form name="form" action="" method="post">
        <div class="form-group">
            <label for="email">Email Address</label>
            <input id="email" type="email" class="form-control" name="email" required autofocus>
        </div>
                
  
        <div class="form-group position-relative">
            <label for="new_password">New Password:</label>
            <input type="password" name="new_password" class="form-control" id="new_password" placeholder="" required>
            <i class="fas fa-eye password-toggle-icon" onclick="togglePasswordVisibility('new_password')"></i>
        </div>

        <div class="form-group mb-0">
            <button type="submit" class="btn btn-primary" name="submit">
                Change Password
            </button>
        </div>
        <div>
            <h5>Don't have an account? <a href="Index2.php">Sign Up</a></h5>
        </div>
    </form>
</div>

<script>
   function togglePasswordVisibility(inputId) {
      var passwordInput = document.getElementById(inputId);
      if (passwordInput.type === "password") {
         passwordInput.type = "text";
      } else {
         passwordInput.type = "password";
      }
   }
</script>

</body>
</html>
