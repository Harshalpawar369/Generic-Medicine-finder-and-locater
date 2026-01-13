<?php
// Start the session at the very beginning of the file
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
// Include other PHP files or perform any other necessary operations
include 'php/connect.php';

$user_id = '';

// Check if 'user_id' is set in the session
if(isset($_SESSION['user_id'])){
    $user_id = $_SESSION['user_id'];
}

// Fetch user profile data
$select_profile = $conn->prepare("SELECT * FROM `user` WHERE id = ?");
$select_profile->execute([$user_id]);
$fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);

// Initialize message array for displaying errors/success messages
$message = [];

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GenoMed</title>
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
    crossorigin="anonymous"
/>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link href="css/responsive.css" rel="stylesheet" />
<link href="css/profile.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/css/profile.css" /> 
<link rel="stylesheet" type="text/css" href="css/css/head.css" /><!-- Add this line for the hamburger menu styles -->
</head>
<body>

<header class="header_section">
    <div class="header_top">
        <div class="container">
            <div class="contact_nav">
                <a href="">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <span>
                        Call : +91
                    </span>
                </a>
                <a href="">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <span>
                        Email : genocare77@gmail.com
                    </span>
                </a>
                <a href="">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <span>
                        Location
                    </span>
                </a>
            </div>
        </div>
    </div>
    <div class="header">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="index.php">
                    <img src="uploaded_img/new.png" alt="" >
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class=""> </span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                        <ul class="navbar-nav  ">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="about.php"> About</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="contact.php">Contact Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="team.php">Team</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="product.php">medicines</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Map.php"></a>
                            </li>
                        </ul>
                    </div>
                    <header class="header">
                        <section class="flex">
                            <div class="icons">
                                <div id="menu-btn"></div>
                                <div id="user-btn" class="fas fa-user"></div>
                                <a href="cart.php"><i class="fas fa-shopping-cart"> </i></a>
                            </div>

                            <div class="profile">
                                <?php
                                if (isset($fetch_profile) && $fetch_profile !== false) {
                                    // Access profile details
                                    $profile_image = isset($fetch_profile['image']) ? 'uploaded_img/' . $fetch_profile['image'] : 'default_image.jpg';
                                    // Output profile image and name
                                    ?>
                                    <img style="display: flex; justify-content: center; align-items: center; width: 100px; height: 100px; border: 2px solid; border-radius: 50%; margin: auto;" src="<?= $profile_image; ?>" alt="Profile Image">
                                    <p><?= $fetch_profile['full_name']; ?></p>
                                    <a href="updateprofile.php" class="btn">Update Profile</a>
                                    <a href="logout.php" class="delete-btn">Logout</a>
                                    <?php
                                } else {
                                    // Handle case when no profile is found
                                    echo "User profile not found.";
                                }
                                ?>
                                <div class="flex-btn">
                                    <a href="login.php" class="option-btn">Login</a>
                                    <a href="Index2.php" class="option-btn">Register</a>
                                </div>
                            </div>
                        </section>
                        <script src="js/js/script.js"></script>
                    </header>
                </div>
            </nav>
        </div>
    </div>
</header>

</body>
</html>
