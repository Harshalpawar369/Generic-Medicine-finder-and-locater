
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, " />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>GenoCare</title>


 <!-- bootstrap core css -->

<!-- fonts style -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

<!--owl slider stylesheet -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- font awesome style -->
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- nice select -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
<!-- datepicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/new.css" rel="stylesheet" />
<link href="css/css/chatbot.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />



<script>
  document.addEventListener('DOMContentLoaded', function () {
    // Check if the browser supports the Web Speech API
    if ('SpeechRecognition' in window || 'webkitSpeechRecognition' in window) {
      var recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();

      recognition.continuous = true;
      recognition.interimResults = true;

      var outputText = document.getElementById('searchField');
      var startBtn = document.getElementById('mic');
      var isListening = false;

      recognition.onstart = function () {
        outputText.placeholder = 'Listening...';
      };

      recognition.onresult = function (event) {
        var transcript = Array.from(event.results)
          .map(result => result[0].transcript)
          .join(' ');

        outputText.value = transcript;
      };

      recognition.onerror = function (event) {
        console.error('Speech recognition error:', event.error);
        outputText.placeholder = 'Error occurred. Please try again.';
        isListening = false;
      };

      recognition.onend = function () {
        if (isListening) {
          recognition.start();
        } else {
          outputText.placeholder = 'Enter medicine name one by one';
        }
      };

      startBtn.addEventListener('click', function () {
        if (!isListening) {
          recognition.start();
          isListening = true;
        } else {
          recognition.stop();
          isListening = false;
          outputText.placeholder = 'Recording stopped. Enter medicine name one by one';
        }
      });
    } else {
      alert('Speech recognition is not supported in this browser. Please use a supported browser.');
    }
  });
</script>
  
</head>

<body >

  <div class="hero_area">
  <?php include 'php\header.php'; ?>
    <!-- header section strats -->
    
  <!-- slider section -->
    <section class="slider_section ">
      <div class="dot_design">
        <img src="images/dots.png" alt="">
      </div>
      <div id="customCarousel1" class="carousel slide" data-ride="carousel"> 
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box" >
                    <div class="play_btn">
                      <button>
                        <i class="fa fa-play" aria-hidden="true"></i>
                      </button>
                    </div>
                    <h1>
                     Geno <br>
                      <span>
                      Care
                      </span>
                    </h1>
                    <a href="about.php" ><p>
                     The perfect place for perfect health.Click and get more info.
                    </p>
                    </a>
                    <a href="contact.php">
                      Contact Us
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider_image.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <div class="play_btn">
                      <button>
                        <i class="fa fa-play" aria-hidden="true"></i>
                      </button>
                    </div>
                    <h1>
                      Geno<br>
                      <span>
                      Care
                      </span>
                    </h1>
                    <a href="about.php"><p>
                      The perfect place for perfect health.Click and get more info.
                     </p>
                     </a>
                    <a href="contact.php">
                      Contact Us
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="images/slider-img1.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
       
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <img src="images/prev.png" alt="">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <img src="images/next.png" alt="">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet">

  <section class="add_section">
  <div class="map-carousal">
    <div class="intro">
      <div class="animated-bg"></div>
      <h2></h2>
      <div class="image">
        <img src="./images/map-image.png" alt="Map Image">
        <div class="overlay">
          <a href="" class=""></a>
        </div>
      </div>
      <p>At GenoCare, we understand the importance of accessible healthcare. Our innovative map feature empowers you to discover nearby generic medical facilities swiftly and effortlessly.</p>
      <p>With just a few clicks, navigate through our comprehensive map to find pharmacies for prescription refills, clinics for routine check-ups, and medical centers for specialized treatments.</p>
      <p>Stay informed with real-time updates and detailed information about each facility. Our map feature ensures you have access to essential healthcare services whenever and wherever you need them.</p>
      <h3>Start Your Health Journey Today</h3>
    </div>
  </div>
</section>


<!--chatbot section-->

<div class="chatbot">
<section class="msger">
    <header class="msger-header">
      <div class="msger-header-title">
        <i class="fas fa-comment-alt"></i> Find your generic medicine name
      </div>
      <div class="msger-header-options">
        <a><i class="fa fa-microphone icon" id="mic"></i></a>
      </div>
    </header>
  
    <main class="msger-chat">
      <div class="msg right-msg">
        <div class="msg-img" style="background-image: url( )"></div>
        <div class="msg-bubble">
          <div class="msg-info">
            <div class="msg-info-name">You</div>
          </div>
          <div class="msg-text">
          <?php 
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
              $conn = mysqli_connect("localhost", "root", "", "generic_db");
              if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
              }
                  $searchQuery = $_POST['searchField'];
                  echo "<h5>You searched :</h5>" . $searchQuery;

            
              }
            ?>
          </div>
        </div>
      </div>
  
      <div class="msg left-msg">
      <div class="msg-img" style="background-image: url(uploaded_img/bot.png)"></div>
        <div class="msg-bubble">
          <div class="msg-info">
            <div class="msg-info-name">Bot</div>
          </div>
          <div class="msg-text">
          <?php 
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
              $val = isset($_POST['searchField']) ? $_POST['searchField'] : '';
              if (!empty($val)) {
                $sql = "SELECT Generic_name, Brand_name, info FROM medican WHERE Brand_name = '$val'";
                $result = mysqli_query($conn, $sql);
                if ($result->num_rows > 0) {
                  while ($rows = $result->fetch_assoc()) {
                    echo "<br>";
                    // Output only Generic_name and Info
                    echo "<br> <h4>Generic Name:</h4><p>".$rows['Generic_name']."</p><br>";
                    echo "<br><h5>Info:</h5><p>".$rows['info'] ."<p><br>";
                    echo "<br><h5>ReQuired More Info Click here And Visit Our AI bot :</h5><a href='https://mediafiles.botpress.cloud/0e202f9f-35ca-4713-a2f8-195cec66086c/webchat/bot.html'>click</a><br>";
                  }
                } else {
                  echo "No results found for '$val'. Please try again.";
                }
              }
            }
            ?>
          </div>
        </div>
      </div>
    </main>
    <form class="msger-inputarea" id="searchForm" method="POST">
      <input type="text" placeholder="Enter medicine name one by one" class="search" style="width: 350px;" id="searchField" name="searchField">
      <button type="submit" name="Button1" id="ser">Search</button>
    </form>
  </section>
          </div>

<!-- Add CSS animations library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">

<script>
  document.addEventListener('DOMContentLoaded', function () {
    // Get the camera icon and search input elements
    var captureBtn = document.getElementById('captureBtn');
    var searchField = document.getElementById('searchField');

    // Add click event listener to the camera icon
    captureBtn.addEventListener('click', function () {
      // Open the camera and trigger the file input
      var input = document.createElement('input');
      input.type = 'file';
      input.accept = 'image/*';
      input.capture = 'environment'; // Use the rear-facing camera on mobile devices

      // Trigger input click
      input.click();

      // Handle selected image
      input.addEventListener('change', function () {
        var file = input.files[0];

        // Use Tesseract.js to perform OCR on the selected image
        Tesseract.recognize(
          file,
          'eng',
          { logger: info => console.log(info) }
        ).then(({ data: { text } }) => {
          // Display the extracted text in the search field
          searchField.value = text;

          // Submit the form programmatically after setting the text value
          document.querySelector('form').submit();
        }).catch(error => {
          console.error('Error during OCR:', error);
          searchField.value = ''; // Clear search field
          searchField.placeholder = 'Error occurred. Please try again.'; // Provide error message
        });
      });
    });
  });
</script>
<!--chatbot section-->

<!-- populer medicines-->
<section class="team_section layout_padding">
  <div class="container">
    <div class="heading_container heading_center">
      <h2>POPULAR <span>MEDICINES</span></h2>
    </div>
    <div class="carousel-wrap owl-carousel team_carousel">
      <div class="item">
        <div class="box">
          <div class="img-box">
            <img src="images/product-10.jpg" alt="AMIORDARONE" />
          </div>
          <div class="detail-box">
            <h6>AMIORDARONE</h6>
            <a href="">₹120</a>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="box">
          <div class="img-box">
            <img src="images/product-7.jpg" alt="ZYLOPRIME" />
          </div>
          <div class="detail-box">
            <h6>ZYLOPRIME</h6>
            <a href="">₹120</a>
          </div>
        </div>
      </div>
      <div class="item">
        <div class="box">
          <div class="img-box">
            <img src="images/team9.jpg" alt="NORVASC" />
          </div>
          <div class="detail-box">
            <h6>NORVASC</h6>
            <a href="">₹120</a>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</section>
<?php

?>

  <!-- end team section -->


 <!-- end team section -->
 <?php include 'php\footer.php'; ?>
  <!-- footer section -->

  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <!-- datepicker -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>



</body>

</html>
