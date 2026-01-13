<?php

include 'php/connect.php';

if (isset($_POST['update_update_btn'])) {
    $update_value = $_POST['update_quantity'];
    $update_id = $_POST['update_quantity_id'];

    try {
        $update_quantity_query = $conn->prepare("UPDATE `cart` SET quantity = :update_value WHERE id = :update_id");
        $update_quantity_query->bindParam(':update_value', $update_value, PDO::PARAM_INT);
        $update_quantity_query->bindParam(':update_id', $update_id, PDO::PARAM_INT);
        $update_quantity_query->execute();

        header('location:cart.php');
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

if (isset($_GET['remove'])) {
    $remove_id = $_GET['remove'];

    try {
        $remove_item_query = $conn->prepare("DELETE FROM `cart` WHERE id = :remove_id");
        $remove_item_query->bindParam(':remove_id', $remove_id, PDO::PARAM_INT);
        $remove_item_query->execute();

        header('location:cart.php');
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}

if (isset($_GET['delete_all'])) {
    try {
        $delete_all_query = $conn->exec("DELETE FROM `cart`");
        header('location:cart.php');
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
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

    <title>Cart</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

    <!-- owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- font awesome style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- nice select -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
    <!-- datepicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/profile.css" rel="stylesheet" />
    <link href="css/css/cart.css" rel="stylesheet" />

    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>

<?php include 'php/header.php'; ?>

<div class="container">
    <section class="shopping-cart">
        <h1 class="heading">Shopping Cart</h1>

        <table>
            <thead>
            <th>Image</th>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Action</th>
            </thead>

            <tbody>

            <?php
$grand_total = 0;

try {
    $select_cart = $conn->query("SELECT * FROM `cart`");

    if ($select_cart->rowCount() > 0) {
        while ($fetch_cart = $select_cart->fetch(PDO::FETCH_ASSOC)) {
            $sub_total = $fetch_cart['price'] * $fetch_cart['quantity'];
            $grand_total += $sub_total;

            // Display the rest of your cart item HTML here
            ?>
            <tr>
                <td><img src="uploaded_img/<?php echo $fetch_cart['image']; ?>" height="100" alt=""></td>
                <td><?php echo $fetch_cart['name']; ?></td>
                <td>₹<?php echo number_format($fetch_cart['price']); ?>/-</td>
                <td>
                    <form action="" method="post">
                        <input type="hidden" name="update_quantity_id" value="<?php echo $fetch_cart['id']; ?>">
                        <input type="number" name="update_quantity" min="1" value="<?php echo $fetch_cart['quantity']; ?>">
                        <input type="submit" value="Update" name="update_update_btn" class="update-btn">
                    </form>
                </td>
                <td>₹<?php echo $sub_total; ?>/-</td>
                <td><a href="cart.php?remove=<?php echo $fetch_cart['id']; ?>" onclick="return confirm('remove item from cart?')" class="delete-btn"> <i class="fas fa-trash"></i> remove</a></td>
            </tr>
            <?php
        }
    }
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
<!-- Display the grand total after the loop -->
<tr class="table-bottom">
    <td><a href="product.php" class="option-btn" style="margin-top: 0;">continue shopping</a></td>
    <td colspan="3">grand total</td>
    <td>₹<?php echo number_format($grand_total); ?>/-</td>
    <td><a href="cart.php?delete_all" onclick="return confirm('are you sure you want to delete all?');" class="delete-btn"> <i class="fas fa-trash"></i> delete all </a></td>
</tr>


            </tbody>

        </table>

        <div class="checkout-btn">
            <a href="checkout.php" class="btn <?= ($grand_total >= 1) ? '' : 'disabled'; ?>">proceed to checkout</a>

        </div>

    </section>
</div>
<?php include 'php/footer.php'; ?>
<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>
