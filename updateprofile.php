<?php
// Start session if not already started and there's no active session
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Include database connection
include 'php/connect.php';

// Redirect to login page if user is not logged in
if (!isset($_SESSION['user_id'])) {
    header('location: login.php');
    exit(); // Stop further execution
}

// Get user ID from session
$user_id = $_SESSION['user_id'];

// Initialize message array for displaying errors/success messages
$message = [];

// Fetch user profile data
$select_profile = $conn->prepare("SELECT * FROM `user` WHERE id = ?");
$select_profile->execute([$user_id]);
$fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);

if (isset($_POST['update_profile'])) {
    // Handle form submission for updating profile details and image

    // Update profile details
    $name = isset($_POST['full_name']) ? $_POST['full_name'] : '';
    $name = filter_var($name, FILTER_SANITIZE_STRING);
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $email = filter_var($email, FILTER_SANITIZE_EMAIL);
    $mobile = isset($_POST['mobile']) ? $_POST['mobile'] : '';
    $mobile = filter_var($mobile, FILTER_SANITIZE_STRING);

    // Validate email format
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $message[] = 'Invalid email format!';
    }

    // Validate mobile number format
    if (!preg_match('/^[0-9]{10}$/', $mobile)) {
        $message[] = 'Mobile number must be 10 digits long!';
    }

    // Update profile picture
    if (!empty($_FILES['image']['name'])) {
        $image_name = $_FILES['image']['name'];
        $image_tmp_name = $_FILES['image']['tmp_name'];
        $image_folder = 'uploaded_img/' . $image_name;

        // Move uploaded image to folder
        if (move_uploaded_file($image_tmp_name, $image_folder)) {
            // Update profile picture in database only if the upload was successful
            $update_image = $conn->prepare("UPDATE `user` SET image = ? WHERE id = ?");
            $update_image->execute([$image_name, $user_id]);

            // Remove old profile picture if exists
            if (!empty($fetch_profile['image']) && file_exists('uploaded_img/' . $fetch_profile['image'])) {
                unlink('uploaded_img/' . $fetch_profile['image']);
            }

            $message[] = 'Profile picture updated successfully!';
        } else {
            $message[] = 'Failed to upload profile picture.';
        }
    }
    $update_name_query = $conn->prepare("UPDATE `user` SET full_name = ? WHERE id = ?");
    $update_name_query->execute([$name, $user_id]);
    if ($update_name_query->rowCount() > 0) {
        $message[] = 'Full name updated successfully!';
    } else {
        $message[] = 'Failed to update full name.';
    }

    // Update mobile number
    $update_mobile_query = $conn->prepare("UPDATE `user` SET mobile = ? WHERE id = ?");
    $update_mobile_query->execute([$mobile, $user_id]);
    if ($update_mobile_query->rowCount() > 0) {
        $message[] = 'Mobile number updated successfully!';
    } else {
        $message[] = 'Failed to update mobile number.';
    }
}

if (isset($_POST['update_password'])) {
    $old_password = isset($_POST['old_password']) ? $_POST['old_password'] : '';
    $new_password = isset($_POST['new_password']) ? $_POST['new_password'] : '';
    $confirm_password = isset($_POST['confirm_password']) ? $_POST['confirm_password'] : '';

    // Verify old password
    $select_password = $conn->prepare("SELECT password FROM `user` WHERE id = ?");
    $select_password->execute([$user_id]);
    $fetch_password = $select_password->fetch(PDO::FETCH_ASSOC);

    if (!password_verify($old_password, $fetch_password['password'])) {
        $message[] = 'Old password is incorrect!';
    } elseif ($new_password !== $confirm_password) {
        $message[] = 'New password and confirm password do not match!';
    } else {
        // Update password
        $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
        $update_password_query = $conn->prepare("UPDATE `user` SET password = ? WHERE id = ?");
        $update_password_query->execute([$hashed_password, $user_id]);
        if ($update_password_query->rowCount() > 0) {
            $message[] = 'Password updated successfully!';
        } else {
            $message[] = 'Failed to update password.';
        }
    }
}


function showAlert($message) {
    echo "<script>alert('$message');</script>";
}

// Display alert message if there are any messages in the message array
foreach ($message as $msg) {
    showAlert($msg);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/update-profile.css">
    <style>
                .password-container {
    position: relative;
}

.password-container input[type="password"] {
    padding-right: 30px; /* Adjust the padding to make space for the eye icon */
}

.password-container i {
    position: absolute;
    top: 50%;
    right: 5px;
    transform: translateY(-50%);
    cursor: pointer;
    color: #ccc; /* Default color of eye icon */
}

.password-container i:hover {
    color: #333; /* Color of eye icon on hover */
}
    </style>
</head>
<body>
   
<?php include 'php/header.php'; ?>

<section class="update-profile">
    <h1 class="title">Update Profile</h1>
    <form action="" method="POST" enctype="multipart/form-data" onsubmit="return validateMobile()">
        <!-- Display profile picture -->
        <?php $profile_image = isset($fetch_profile['image']) ? 'uploaded_img/' . $fetch_profile['image'] : 'default.jpg'; ?>
        <img src="<?= $profile_image; ?>" alt="Profile Picture">
        
        <!-- Input fields for updating profile -->
        <div class="flex">
            <div class="inputBox">
                <span>Username :</span>
                <input type="text" name="full_name" value="<?= isset($fetch_profile['full_name']) ? $fetch_profile['full_name'] : ''; ?>" placeholder="Update username" required class="box">
                <span>Email :</span>
                <input type="email" name="email" value="<?= isset($fetch_profile['email']) ? strtolower($fetch_profile['email']) : ''; ?>" placeholder="Update email" required class="box">
                <span>Mobile :</span>
                <input type="text" id="mobile" name="mobile" value="<?= isset($fetch_profile['mobile']) ? $fetch_profile['mobile'] : ''; ?>" placeholder="Update mobile" required class="box">
                <span>Update Picture :</span>
                <input type="file" name="image" accept="image/jpg, image/jpeg, image/png" class="box">
            </div>
            <div class="inputBox">
                <span>Old Password :</span>
                <div class="password-container">
                    <input type="password" name="old_password" id="old_password" placeholder="Enter old password" class="box">
                    <i class="fas fa-eye" id="toggle_old_password" onclick="togglePassword('old_password')"></i>
                </div>
                <span>New Password :</span>
                <div class="password-container">
                    <input type="password" name="new_password" id="new_password" placeholder="Enter new password" class="box">
                    <i class="fas fa-eye" id="toggle_new_password" onclick="togglePassword('new_password')"></i>
                </div>
                <span>Confirm Password :</span>
                <div class="password-container">
                    <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm new password" class="box">
                    <i class="fas fa-eye" id="toggle_confirm_password" onclick="togglePassword('confirm_password')"></i>
                </div>
            </div>
        </div>
        
        <!-- Submit button -->
        <div class="flex-btn">
            <input type="submit" class="btn" value="Update Profile" name="update_profile">
            <input type="submit" class="btn" value="Update Password" name="update_password">
            <a href="index.php" class="btn">Go back</a>
        </div>
    </form>
        
    <!-- Display error/success messages -->
    <?php 
    foreach ($message as $msg) {
        echo "<p>$msg</p>";
    }
    ?>
</section>

<?php include 'php/footer.php'; ?>

<script src="js/script.js"></script>
<script>
    function validateMobile() {
        var mobileNumber = document.getElementById("mobile").value;
        var pattern = /^[0-9]{10}$/;
        if (!pattern.test(mobileNumber)) {
            alert("Mobile number must be 10 digits long!");
            return false;
        }
        return true;
    }

    function togglePassword(fieldId) {
        var passwordField = document.getElementById(fieldId);
        var toggleButton = document.getElementById("toggle_" + fieldId);
        if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleButton.classList.remove("fa-eye");
            toggleButton.classList.add("fa-eye-slash");
        } else {
            passwordField.type = "password";
            toggleButton.classList.remove("fa-eye-slash");
            toggleButton.classList.add("fa-eye");
        }
    }
</script>

</body>
</html>
