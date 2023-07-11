<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
	// thêm hàm này để xử lý khoảng trắng, unicode URL thân thiện
    // function makeUrl($string){
    //     $string = trim($string);
    //     $string = str_replace(' ','-',$string);
    //     $string = strtolower($string);
    //     $string = preg_replace('/(à|á|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ)/','a',$string);
    //     $string = preg_replace('/(ê|ế|ề|ể|ễ|ệ)/','e',$string);
    //     return $string;
    // }
?>
	

<div class="main">
	<div class="content">
		<div class="content_top" >
			<div class="heading">
			<h3>Razer</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group">
			<?php
				$product_razer = $product->getproduct_razer();
				if($product_razer) {
					while($result = $product_razer->fetch_assoc()) {
			?>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					<h2><?php echo $result['productName'] ?></h2>
					<!-- <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p> -->
					<p><span class="price"><?php echo $fm->format_currency($result['price'])." VNĐ" ?></span></p>

					<div class="button"><span><a href="<?php echo $result['productId']?>" class="details">Thông tin</a></span></div>

					<!-- <div class="button"><span><a href="<?php echo $result['productId']?>/<?php echo makeUrl($row['ten_sp'])?>" class="details">Thông tin</a></span></div> -->

				</div>
			<?php
					}
				}
			?>
		</div>

		<div class="content_top">
			<div class="heading">
			<h3>DareU</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group">
			<?php
				$product_daeru = $product->getproduct_daeru();
				if($product_daeru) {
					while($result = $product_daeru->fetch_assoc()) {
			?>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					<h2><?php echo $result['productName'] ?></h2>
					<!-- <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p> -->
					<p><span class="price"><?php echo $fm->format_currency($result['price'])." VNĐ" ?></span></p>
					<div class="btn btn-dark"><span><a style="color: #fff; text-decoration: none;" href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Thông tin</a></span></div>
				</div>
			<?php
					}
				}
			?>
		</div>

		<div class="content_bottom">
			<div class="heading">
			<h3>Logitech</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group">
			<?php
				$product_logitech = $product->getproduct_logitech();
				if($product_logitech) {
					while($result = $product_logitech->fetch_assoc()) {
			?>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					<h2><?php echo $result['productName'] ?></h2>
					<!-- <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p> -->
					<p><span class="price"><?php echo $fm->format_currency($result['price'])." VNĐ" ?></span></p>
					<div class="btn btn-dark"><span><a style="color: #fff; text-decoration: none;" href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Thông tin</a></span></div>
				</div>
			<?php
					}
				}
			?>
		</div>
			
		<div class="content_bottom">
			<div class="heading">
			<h3>Sony</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="section group">
			<?php
				$product_sony = $product->getproduct_sony();
				if($product_sony) {
					while($result = $product_sony->fetch_assoc()) {
			?>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="details.php"><img src="admin/uploads/<?php echo $result['image'] ?>" alt="" /></a>
					<h2><?php echo $result['productName'] ?></h2>
					<!-- <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p> -->
					<p><span class="price"><?php echo $fm->format_currency($result['price'])." VNĐ" ?></span></p>
					
					<!-- <div class="button"><span><a href="<?php echo $result['productId']?>" class="details">Thông tin</a></span></div> -->

					<!-- <div class="button"><span><a href="<?php echo $result['productId']?>/<?php echo makeUrl($row['ten_sp'])?>" class="details">Thông tin</a></span></div> -->
					<div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Thông tin</a></span></div>

				</div>
			<?php
					}
				}
			?>
		</div>

	</div>
	</div>
	
			
	</div>
</div>

<?php 
	include 'inc/footer.php';
?>