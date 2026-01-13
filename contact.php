<?php
include 'php/connect.php';
session_start();

if(isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
}

if(isset($_POST['submit'])) {
   $name = filter_input(INPUT_POST, 'full_name', FILTER_SANITIZE_STRING);
   $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
   $number = filter_input(INPUT_POST, 'mobile', FILTER_SANITIZE_STRING);
   $msg = filter_input(INPUT_POST, 'msg', FILTER_SANITIZE_STRING);

   if($name && $email && $number && $msg) {
      $select_message = $conn->prepare("SELECT * FROM `messages` WHERE name = ? AND email = ? AND number = ? AND message = ?");
      $select_message->execute([$name, $email, $number, $msg]);

      if($select_message->rowCount() > 0) {
         $message = 'You have already sent this message.';
      } else {
         $insert_message = $conn->prepare("INSERT INTO `messages`(name, email, number, message) VALUES(?,?,?,?)");
         if ($insert_message->execute([ $name, $email, $number, $msg])) {
            $message = 'Your message has been sent successfully!';
            echo "<script>alert('$message');</script>"; // Display alert message
         } else {
            $message = 'Error: Unable to send message. Please try again later.';
         }
      }
   } else {
      $message = 'Please fill in all fields.';
   }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Contact</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
   
<?php include 'php/header.php'; ?>

<section class="contact_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>Get In Touch</h2>
      </div>
      <div class="row">
        <div class="col-md-7">
          <div class="form_container">
            <form action="" method="POST">
              <div>
                <input type="text" name="full_name" placeholder="Full Name" class="full_name"/>
              </div>
              <div>
                <input type="email" name="email" placeholder="Email" class="email" />
              </div>
              <div>
                <input type="tel" name="mobile" placeholder="Phone Number" class="mobile" />
              </div>
              <div>
                <input type="text" name="msg" class="message-box" placeholder="Message">
              </div>
              <div class="btn_box">
                <button type="submit" name="submit" class="submit">SEND</button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-5">
          <div class="img-box">
            <img src="images/contact-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

<?php
if(isset($message)) {
   if (is_array($message)) {
      foreach ($message as $msg) {
         echo "<div class='message'>$msg</div>";
      }
   } else {
      echo "<div class='message'>$message</div>";
   }
}
?>

<?php include 'php/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>
