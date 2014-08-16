<div class="row mod_conteiner">
  <div class="row">
	<div class="two fifth mod_head_right mobile"><img src="catalog/view/theme/black_justin_3/image/logo_left_black.png" alt=""/></div>
	<div class="one fifth mobile"><h2 class="box-head"><?php echo $heading_title; ?></h2></div>
	<div class="two fifth mod_head_left mobile"><img src="catalog/view/theme/black_justin_3/image/logo_right_black.png" alt=""/></div>
  </div>
  <div class="row product_list">

	<ul class="products bounceInLeft animated">
        <?php foreach ($products as $product) {?>
			<li>
				<div class="product" data-scroll-reveal="enter bottom and move 100px over 1s">
					<div class="row">
						<h3 class="responsive" data-scrollable="true"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
					</div>
					<?php if ($product['thumb']) { ?>
						<div class="row mod_thumb"><a href="<?php echo $product['href']; ?>"><img class="thumb" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
					<?php } ?>
					<div class="row product_price_cart">
						<div class="one third mobile">
							<a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="whislist_mod"><i class="icon-gift"></i><a/>
						</div>
						<div class="one third mobile">
							<a class="compare_mod" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="icon-dashboard"></i></a>
						</div>
						<div class="one third mobile">
							<div class="row">
								<a class="p_info" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');"><i class="icon-shopping-cart"></i></a>
							</div>
						</div>
					</div>
					<div class="row price_conteiner">
						<?php if ($product['price']) { ?>
							<?php if (!$product['special']) { ?>
								<span class="price_module p_price"><?php echo $product['price']; ?></span>
							<?php } else { ?>
								<span class="price_module p_price"><?php echo $product['special']; ?> <!--<span class="price-old"><?php echo $product['price']; ?></span>--></span>
							<?php } ?>
						<?php } ?>
					</div>
					<?php if ($product['rating']) { ?>
						<div class="row"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
					<?php } ?>
				</div>
			</li>
		<?php } ?>
	</ul>
  </div>
</div>
<div class="clr"></div>