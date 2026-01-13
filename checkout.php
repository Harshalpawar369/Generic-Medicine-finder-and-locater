<?php
include 'php/connect.php';

if (isset($_POST['order_btn'])) {
    $name = $_POST['name'];
    $number = $_POST['number'];
    $email = $_POST['email'];
    $method = $_POST['method'];
    $flat = $_POST['flat'];
    $street = $_POST['street'];
    $city = $_POST['city'];
    $state = $_POST['state'];
    $country = $_POST['country'];
    $pin_code = $_POST['pin_code'];

    $cart_query = $conn->query("SELECT * FROM `cart`");
    $price_total = 0;
    $product_name = [];

    while ($product_item = $cart_query->fetch(PDO::FETCH_ASSOC)) {
        $product_name[] = $product_item['name'] . ' (' . $product_item['quantity'] . ') ';
        $product_price = $product_item['price'] * $product_item['quantity'];

        // Check if $product_price is numeric
        if (is_numeric($product_price)) {
            $price_total += $product_price;
        } else {
            // Handle non-numeric value, e.g., set it to 0 or handle it as appropriate
            $price_total += 0;
        }
    }

    $total_product = implode(', ', $product_name);

    // Prepare and execute the INSERT query
    $detail_query = $conn->prepare("INSERT INTO `orders` (name, number, email, method, flat, street, city, state, country, pin_code, total_products, total_price) VALUES (:name, :number, :email, :method, :flat, :street, :city, :state, :country, :pin_code, :total_product, :price_total)");
    $detail_query->bindParam(':name', $name, PDO::PARAM_STR);
    $detail_query->bindParam(':number', $number, PDO::PARAM_STR);
    $detail_query->bindParam(':email', $email, PDO::PARAM_STR);
    $detail_query->bindParam(':method', $method, PDO::PARAM_STR);
    $detail_query->bindParam(':flat', $flat, PDO::PARAM_STR);
    $detail_query->bindParam(':street', $street, PDO::PARAM_STR);
    $detail_query->bindParam(':city', $city, PDO::PARAM_STR);
    $detail_query->bindParam(':state', $state, PDO::PARAM_STR);
    $detail_query->bindParam(':country', $country, PDO::PARAM_STR);
    $detail_query->bindParam(':pin_code', $pin_code, PDO::PARAM_STR);
    $detail_query->bindParam(':total_product', $total_product, PDO::PARAM_STR);
    $detail_query->bindParam(':price_total', $price_total, PDO::PARAM_STR);

    if ($detail_query->execute()) {
        // Success message
        echo "
            <div class='order-message-container'>
                <div class='message-container'>
                    <h3>Thank you for shopping!</h3>
                    <div class='order-detail'>
                        <span>$total_product</span>
                        <span class='total'> Total: ₹$price_total/-</span>
                    </div>
                    <div class='customer-details'>
                        <p>Your name: <span>$name</span></p>
                        <p>Your number: <span>$number</span></p>
                        <p>Your email: <span>$email</span></p>
                        <p>Your address: <span>$flat, $street, $city, $state, $country - $pin_code</span></p>
                        <p>Your payment mode: <span>$method</span></p>
                        <p>(*Pay when the product arrives*)</p>
                    </div>
                    <a href='product.php' class='btn'>Continue Shopping</a>
                </div>
            </div>";
    } else {
        // Error message
        echo "Error inserting order: " . $detail_query->errorInfo()[2];
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Mico</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- Fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

    <!-- Owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- Font Awesome style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Nice Select -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
    <!-- Datepicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/css/checkout.css" rel="stylesheet" />

    <!-- Responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
<div class="container">

<section class="checkout-form">

    <h1 class="heading">Complete Your Order</h1>

    <form action="" method="post">

        <div class="display-order">
            <?php
            $select_cart = $conn->query("SELECT * FROM `cart`");

            $price_total = 0;

            if ($select_cart->rowCount() > 0) {
                while ($fetch_cart = $select_cart->fetch(PDO::FETCH_ASSOC)) {
                    $total_price = $fetch_cart['price'] * $fetch_cart['quantity'];
                    $price_total += $total_price;
                }
            }
            
            // Check if $price_total is numeric before using number_format
            if (is_numeric($price_total)) {
                // Format with 2 decimal places
                $price_total_formatted = number_format($price_total, 2, '.', '');
            } else {
                $price_total_formatted = '0.00'; // Set a default value or handle it as appropriate
            
                // Additional debugging statements
                echo "Non-numeric value encountered after formatting. Value: " . $price_total . "<br>";
                echo "Debugging information: <pre>";
                var_dump($price_total);
                echo "</pre>";
            }
            ?>
        </div>

        <div class="flex">
            <div class="inputBox">
                <span>Your name</span>
                <input type="text" placeholder="Enter your name" name="name" required>
            </div>
            <div class="inputBox">
                <span>Your number</span>
                <input type="number" placeholder="Enter your number" name="number" required>
            </div>
            <div class="inputBox">
                <span>Your email</span>
                <input type="email" placeholder="Enter your email" name="email" required>
            </div>
            <div class="inputBox">
                <span>Payment method</span>
                <select name="method">
                    <option value="cash on delivery" selected>Cash on Delivery</option>
                    <option value="credit card">Credit Card</option>
                    <option value="paypal">Paypal</option>
                </select>
            </div>
            <div class="inputBox">
                <span>Address line 1</span>
                <input type="text" placeholder="e.g. flat no." name="flat" required>
            </div>
            <div class="inputBox">
                <span>Address line 2</span>
                <input type="text" placeholder="e.g. street name" name="street" required>
            </div>
            <div class="inputBox">
                <span>City</span>
                <input type="text" placeholder="e.g. Mumbai" name="city" required>
            </div>
            <div class="inputBox">
                <span>State</span>
                <input type="text" placeholder="e.g. Maharashtra" name="state" required>
            </div>
            <div class="inputBox">
    <span>Country</span>
    <input type="text" placeholder="e.g. India" name="country" value="India" required>
</div>

            <div class="inputBox">
                <span>Pin code</span>
                <input type="text" placeholder="e.g. 123456" name="pin_code" required>
            </div>
        </div>
        <input type="submit" value="Order Now" name="order_btn" class="btn">
    </form>

</section>

</div>


<!-- Custom JS file link -->
<script src="js/script.js"></script>

</body>
</html>