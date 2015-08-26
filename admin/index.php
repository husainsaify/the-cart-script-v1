<?php
  require_once("inc/header.php");
  require_once("inc/navbar.php");
  // check admin is logged in or not
  not_login($_SESSION['admin_id'], "login.php");
?>
<div class="container padding-10">
  <div id="search-container">
      <h1 class="text-center text-upper text-bs-primary">Welcome <?php echo $_SESSION['admin_username']; ?></h1>
      <?php
        // count user,orders,products category etc
      $user_count = $db->GetNum("user",null);
      $order_count = $db->GetNum("buy", null);
      $product_count = $db->GetNum('product', null);
      $category_count = $db->GetNum("category", null);
      ?>
      <!-- information tile -->
      <div class="row">
      <!-- USER COUNT -->
        <div class="col-sm-3">
          <a href="users.php" class="a">
          <div class="tile-container bg-red">
            <i class='fa fa-users icon-medium'></i>
            <p><?php echo $user_count; ?></p>
            <h3>Users</h3>
          </div>
          </a>
        </div>
        <!-- / USER COUNT -->

        <!-- ORDER COUNT -->
        <div class="col-sm-3">
        <a href="#" class="a">
          <div class="tile-container bg-green">
            <i class='fa fa-money icon-medium'></i>
            <p><?php echo $order_count; ?></p>
            <h3>Orders</h3>
          </div>
          </a>
        </div>
        <!-- / ORDER COUNT -->

        <!-- CATEGORY COUNT -->
        <div class="col-sm-3">
          <a href="category.php" class="a">
          <div class="tile-container bg-orange">
            <i class='fa fa-files-o icon-medium'></i>
            <p><?php echo $category_count; ?></p>
            <h3>Category</h3>
          </div>
          </a>
        </div>
        <!-- / CATEGORY COUNT -->

        <!-- PRODUCT COUNT -->
        <div class="col-sm-3">
          <a href="product.php" class="a">
          <div class="tile-container bg-blue">
            <i class='fa fa-black-tie icon-medium'></i>
            <p><?php echo $product_count; ?></p>
            <h3>Products</h3>
          </div>
          </a>
        </div>
        <!-- / PRODUCT COUNT -->
      </div>
      <!-- / information tile -->

      <h1 class="text-center text-upper text-bs-primary">new orders</h1>
      
  </div>
</div>
<?php
  require_once("inc/footer.php");
?>
