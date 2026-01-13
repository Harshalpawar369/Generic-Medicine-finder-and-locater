<?php
// product.php

include 'php/connect.php';
session_start();
$message = [];
$page = isset($_GET['page']) ? $_GET['page'] : 1; // Define $page here

// Define the limit for the number of products per page
$productsPerPage = 40; // Change this value to set the desired limit

if (isset($_POST['add_to_cart'])) {
    $product_name = $_POST['product_name'];
    $product_price = $_POST['product_price'];
    $product_image = $_POST['product_image'];
    $product_quantity = 1;
    if(!isset($_SESSION['user_id'])){
        // Redirect to login page if not logged in
        header("Location: login.php");
        exit();
    }

    // User is logged in, proceed with adding product to cart
    $user_id = $_SESSION['user_id'];



    try {
        $select_cart = $conn->prepare("SELECT * FROM `cart` WHERE name = :product_name");
        $select_cart->bindParam(':product_name', $product_name);
        $select_cart->execute();

        if ($select_cart->rowCount() > 0) {
            echo '<script>alert("Product already added to cart")</script>';
        } else {
            $insert_product = $conn->prepare("INSERT INTO `cart` (name, price, image, quantity) VALUES (:product_name, :product_price, :product_image, :product_quantity)");
            $insert_product->bindParam(':product_name', $product_name);
            $insert_product->bindParam(':product_price', $product_price);
            $insert_product->bindParam(':product_image', $product_image);
            $insert_product->bindParam(':product_quantity', $product_quantity);
            $insert_product->execute();
            echo'<script>alert("Product added to cart successfully")</script>';
        }
    } catch (PDOException $e) {
     echo 'Error: ' . $e->getMessage();
    }
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Medical</title>
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/css/cart.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/new.css">
   <link rel="stylesheet" href="css/css/product.css">
</head>
<body>
<?php include 'php/header.php'; ?>

<?php
foreach ($message as $msg) {
    echo '<div class="message"><span>' . htmlspecialchars($msg, ENT_QUOTES, 'UTF-8') . '</span> <i class="fas fa-times" onclick="this.parentElement.style.display = `none`;"></i> </div>';
}
?>

<section class="show-products">
    <h1 class="heading">Products Added</h1>

    <!-- Search form -->
    <div class="search-bar">
         <form method="GET" action="product.php" class="search-form">
            <input type="text" name="search_query" class="" placeholder="Search products..." id="searchField">
            <button type="submit" class="button"><i class="fas fa-search"></i></button>
            <button type="button" class="button microphone-button" id="mic"><i class="fas fa-microphone"></i></button>
         </form>
      </div>
    <div class="box-container">
        <?php
        // Check if a search query is submitted
        if (isset($_GET['search_query']) && !empty($_GET['search_query'])) {
            $search_query = $_GET['search_query'];

            // Query to select products matching the search query with limit
            $select_products = $conn->prepare("SELECT * FROM `products` WHERE name LIKE :search_query LIMIT :limit");
            $select_products->bindValue(':search_query', '%' . $search_query . '%');
            $select_products->bindValue(':limit', $productsPerPage, PDO::PARAM_INT);
            $select_products->execute();
        } else {
            // Query to select all products with limit
            $select_products = $conn->prepare("SELECT * FROM `products` LIMIT :limit");
            $select_products->bindValue(':limit', $productsPerPage, PDO::PARAM_INT);
            $select_products->execute();
        }

        if ($select_products->rowCount() > 0) {
            while ($fetch_products = $select_products->fetch(PDO::FETCH_ASSOC)) {
                ?>
                <div class="box">
                    <img src="uploaded_img/<?= htmlspecialchars($fetch_products['image']); ?>" alt="">
                    <div class="name"><?= $fetch_products['name']; ?></div>
                    <div class="price">₹<span><?= $fetch_products['price']; ?></span>/-</div>
                    <div class="details"><span><?= $fetch_products['details']; ?></span></div>
                    <form method="post">
                        <input type="hidden" name="product_name"
                               value="<?= htmlspecialchars($fetch_products['name']); ?>">
                        <input type="hidden" name="product_price"
                               value="<?= htmlspecialchars($fetch_products['price']); ?>">
                        <input type="hidden" name="product_image"
                               value="<?= htmlspecialchars($fetch_products['image']); ?>">
                        <button type="submit" class="btn" name="add_to_cart">Add to Cart</button>
                    </form>
                </div>
                <?php
            }
        } else {
            echo '<p class="empty">No products found!</p>';
        }
        ?>
    </div>

    <!-- Pagination -->
   
    </div>
</section>

<?php include 'php/footer.php'; ?>

<script src="js/js/mic.js"></script>

</body>
</html>
