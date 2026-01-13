<?php
include 'php/connect.php';

session_start();

$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : '';

$message = []; // Initialize an array to store messages

if(isset($_POST['submit'])){
   $full_name = filter_var($_POST['full_name'], FILTER_SANITIZE_STRING);
   $mobile = filter_var($_POST['mobile'], FILTER_SANITIZE_STRING);
   $email = filter_var($_POST['email'], FILTER_SANITIZE_STRING);
   $password = $_POST['password']; // Don't filter the password
   $confirm_password = $_POST['confirm_password'];

   if (!preg_match("/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/", $email)) {
      $message[] = 'Invalid email format';
   }

   if (!preg_match("/^[0-9]{10}$/", $mobile)) {
      $message[] = 'Invalid mobile number';
   }

   if (!preg_match("/^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z]).{8,}$/", $_POST['password'])) {
      $message[] = 'Password must be at least 8 characters long and contain at least one digit, one symbol, and one letter';
   }

   if ($password !== $confirm_password) {
      $message[] = 'Passwords do not match';
   }

   if(empty($message)){
      // Check if email already exists
      $select_user = $conn->prepare("SELECT * FROM `user` WHERE email = ?");
      $select_user->execute([$email]);
      $row = $select_user->fetch(PDO::FETCH_ASSOC);

      if($select_user->rowCount() > 0){
         $message[] = 'Email already exists!';
      } else {
         // Hash the password
         $hashed_password = password_hash($password, PASSWORD_DEFAULT);
         
         // Insert new user
         $insert_user = $conn->prepare("INSERT INTO `user` (full_name, mobile, email, password) VALUES (?, ?, ?, ?)");
         $insert_user->execute([$full_name, $mobile, $email, $hashed_password]);
         $_SESSION['user_id'] = $conn->lastInsertId(); // Set session user_id
         $_SESSION['registration_success'] = true; // Set registration success flag
         header('Location: login.php');
         exit(); // Exit script after redirection
      }
   }
}

// JavaScript function to display alert box
function showAlert($message) {
    echo "<script>alert('$message');</script>";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form HTML Design</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<link href="css/css/login.css" rel="stylesheet" />
<link href="css/responsive.css" rel="stylesheet" />

</head>
<body>

<div class="login-container">
   <div class="login-form">
       <div class="login-header">
           <h2>Sign Up</h2>
       </div>
       <?php if (!empty($message)): ?>
           <?php foreach ($message as $msg): ?>
               <?php showAlert($msg); ?>
           <?php endforeach; ?>
       <?php endif; ?>
       <form name="form" action="" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
           <div class="form-group">
               <label for="full_name">Full Name</label>
               <input type="text" name="full_name" class="form-control" id="full_name" placeholder="Enter Full Name" required>
           </div>
           <div class="form-group">
                <label for="mobile">Mobile No</label>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="form-control">+91</span>
                    </div>
                    <input type="text" name="mobile" class="form-control" id="mobile" placeholder="Enter Mobile Number" required>
                </div>
            </div>
           <div class="form-group">
               <label for="email">Email:</label>
               <input type="email" name="email" class="form-control" id="email" placeholder="Enter Email Address" required>
           </div>
           <div class="form-group position-relative">
               <label for="password">Password:</label>
               <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
               <i class="fas fa-eye password-toggle-icon" onclick="togglePasswordVisibility('password')"></i>
           </div>
           <div class="form-group position-relative">
               <label for="confirm_password">Confirm Password:</label>
               <input type="password" name="confirm_password" class="form-control" id="confirm_password" placeholder="Confirm Password" required>
               <i class="fas fa-eye password-toggle-icon" onclick="togglePasswordVisibility('confirm_password')"></i>
           </div>
           <div class="form-group">
               <button class="btn btn-primary" value="login" name="submit">Create Account</button>
           </div>
           <div class="already-account">
               <h5>Already have an account? <a href="login.php">Login</a></h5>
           </div>
       </form>
   </div>
</div>

<script>
function togglePasswordVisibility(inputId) {
   var passwordInput = document.getElementById(inputId);
   var eyeIcon = passwordInput.nextElementSibling;
   if (passwordInput.type === "password") {
      passwordInput.type = "text";
      eyeIcon.classList.remove("fa-eye");
      eyeIcon.classList.add("fa-eye-slash");
   } else {
      passwordInput.type = "password";
      eyeIcon.classList.remove("fa-eye-slash");
      eyeIcon.classList.add("fa-eye");
   }
}
</script>

</body>
</html>
