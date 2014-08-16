<div class="slideshow bounceInRight animated">
	<ul class="rslides" id="slider3">
		<?php foreach ($banners as $banner) { ?>
			<li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a></li>
		<?php } ?>
	</ul>
</div>
