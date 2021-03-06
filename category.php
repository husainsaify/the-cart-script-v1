<?php 
	require_once("inc/header.php");
	require_once("inc/navbar.php");

	/*check id is available*/
	if (isset($_GET['id'])) {
		$category_id = escape($_GET['id']);
		/*check that the $category_id is valid*/

		$category_num = $db->GetNum("category","id='$category_id'");

		/*no category_id is invalid*/
		if ($category_num == 0) {
			redirect("404.php");
		}
	}else{
		redirect("404.php");
	}
?>
<!-- CONTAINER -->
<div class="container padding-10">
	<div class="row">
		<div class="col-sm-2 col-md-2">
			<ul class="category-list">
				<li class="text-bs-primary">Shop By Category</li>	
			<?php 
				/*fetch list of all the category*/
				$category_lists = $db->FetchAll("`id`,`name`","category","id!=$category_id","`id` ASC");
				foreach ($category_lists as $key => $category_list) {
					echo "<a href='category.php?id={$category_list['id']}'><li>{$category_list['name']}</li></a>";
				}			
			?>
			</ul>
		</div>
		<div class="col-sm-10 col-md-10 bg-white border-ccc">
			<?php
				/*find cat3egory name*/
				$category = $db->Fetch("*","category","id='$category_id'");
				echo "<h1 class='text-center text-upper text-bs-primary'>{$category['name']}</h1>";
				
				?>
				<!-- PRODUCTS -->
				<div class="row">
				<?php	

				/*fetch all the product realted to this category*/
				$products = $db->FetchAll("*","product","category_id='$category_id'","`id` DESC");

				/*check there is more then 1 product of this category*/
				$product_num = $db->GetNum("product","category_id='$category_id'");

				if ($product_num == 0) {
					echo "<h3 class='text-center'>No Product Found</h3>";
					exit();
				}

				foreach ($products as $key => $product) {
					?>
					<div class="col-sm-3 col-md-3">
						<a href="product.php?id=<?php echo $product['id']; ?>" class="thumbnail">
							<img src="<?php echo $product['image']; ?>">
							<p class="text-bs-primary text-center"><?php echo $product['name']; ?></p>
							<p class="text-bold">Rs <?php echo $product['sp']; ?></p>
							<span class="text-line-through">Rs <?php echo $product['mp']; ?></span> <span class="text-red">[<?php echo $product['off']; ?> Off]</span>
						</a>
					</div>
					<?php
				}
			?>
			</div>
			<!-- /PRODUCTS -->
		</div>
	</div>	
</div>
<!-- /CONTAINER -->
<?php require_once("inc/footer.php"); ?>
