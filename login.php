<?php
include 'php/connect.php';

session_start();

if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Check if the email exists
    $select_user = $conn->prepare("SELECT * FROM `user` WHERE email = ?");
    $select_user->execute([$email]);
    $user = $select_user->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        // Verify the password
        if (password_verify($password, $user['password'])) {
            // Password is correct, log in the user
            $_SESSION['user_id'] = $user['id'];
            header('Location: index.php');
            exit();
        } else {
            // Incorrect password
            echo '<script>alert("Incorrect password!")</script>';
        }
    } else {
        // User not found
        echo '<script>alert("User not found!")</script>';
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
        <h2>Login</h2>
    </div>
    <form name="form" action="" method="post">
        <div class="login-form">
            <div class="form-group">
                <label for="Emails">Email:</label>
                <input type="email" name="email" class="form-control" id="floatingInput" placeholder="Enter Email Address" required>
            </div>
            <div class="form-group position-relative">
                <label for="password">Password:</label>
                <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password" required>
                <i class="fas fa-eye password-toggle-icon" onclick="togglePasswordVisibility()"></i>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" value="login" name="submit">Login</button>
            </div>
            <div>
                <h5>Don't have an account? <a href="Index2.php">Sign Up</a></h5>
            </div>
            <a href="forgot_password.php">Forgot Password?</a>
        </div>
    </form>
</div>

<script>
    function togglePasswordVisibility() {
        var passwordInput = document.getElementById("floatingPassword");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
</script>

</body>
</html>
