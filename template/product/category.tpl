<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="padded bounceInLeft animated left"><?php echo $content_top; ?>
	<div class="row">
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
				<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
    </div>
	<div class="row">
		 <div class="one third">
			<h1><?php echo $heading_title; ?></h1>
		 </div>
		 <div class="one third">
		 </div>
		 <div class="one third">
		 </div>
	</div>
	
	<?php if ($thumb || $description) { ?>
		<div class="row">
			<div class="one third">
				<?php if ($thumb) { ?>
					<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
				<?php } ?>
			</div>
			<div class="two third">
				<?php if ($description) { ?>
					<?php echo $description; ?>
				<?php } ?>
			</div>
		</div>
	<?php } ?>
	
    <?php if ($categories) { ?>
		<h2><?php echo $text_refine; ?></h2>
  
		<div class="row">
			<?php if (count($categories) <= 5) { ?>
				<nav title="<?php echo $text_refine; ?>" role="navigation" class="nav">
					<ul>
						<?php foreach ($categories as $category) { ?>
							<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
						<?php } ?>
					</ul>
				</nav>
			<?php } else { ?>
				<nav title="<?php echo $text_refine; ?>" role="navigation" class="nav">
					<?php for ($i = 0; $i < count($categories);) { ?>
						<ul>
							<?php $j = $i + ceil(count($categories) / 4); ?>
							<?php for (; $i < $j; $i++) { ?>
								<?php if (isset($categories[$i])) { ?>
									<li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
								<?php } ?>
							<?php } ?>
						</ul>
					<?php } ?>
				</nav>
			<?php } ?>
		</div>
	<?php } ?>
	
	<?php if ($products) { ?>
	<div class="row product-filter">
		<div class="one third padded">
			<div class="limit"><b><?php echo $text_limit; ?></b>
				<select onchange="location = this.value;">
					<?php foreach ($limits as $limits) { ?>
						<?php if ($limits['value'] == $limit) { ?>
							<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						<?php } else { ?>
							<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						<?php } ?>
					<?php } ?>
				</select>
			</div>
		</div>
		<div class="one third padded">
			<div class="sort"><b><?php echo $text_sort; ?></b>
				<select onchange="location = this.value;">
					<?php foreach ($sorts as $sorts) { ?>
						<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
							<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
						<?php } else { ?>
							<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
						<?php } ?>
					<?php } ?>
				</select>
			</div>
		</div>
		<div class="one third padded">
			<div class="padded">
				<div class="product-compare">
					<p></p><a class="button" href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
				</div>
			</div>
		</div>
    </div>
	
  <div class="product-list">
    <?php foreach ($products as $product) { ?>
    <div class="product_one padded"><!-- START PRODUCT -->
		<div class="row">
			<div class="one fifth">
				<?php if ($product['thumb']) { ?>
					<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
				<?php } ?>
			</div>
			<div class="three fifth">
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<div class="description"><?php echo $product['description']; ?></div>
			</div>
			<div class="one fifth">
				<?php if ($product['price']) { ?>
					<div class="price">
						<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
						<?php } else { ?>
							<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
						<!--
						<?php if ($product['tax']) { ?>
							<br />
							<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
						<?php } ?>
						-->
					</div>
				<?php } ?>
				<?php if ($product['rating']) { ?>
					<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
				<?php } ?>
			</div>
		</div>
		<div class="row cart_panel">
			<div class="one third">
			</div>
			<div class="two third product_one_icon">
				<a onclick="addToCart('<?php echo $product['product_id']; ?>');" ><i class="icon-shopping-cart"></i></a>
				<a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><i class="icon-gift"></i></a>
				<a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><i class="icon-dashboard"></i></a>
			</div>
		</div>
    </div> <!-- END PRODUCT -->
    <?php } ?>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  <div class="clr"></div>
<?php echo $footer; ?>