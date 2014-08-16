</div></div>
<div class="row"></div>
<div id="footer" class="equalize row bounceInUp animated">
<div class="footer padded">
  <?php if ($informations) { ?>
  <div class="one fourth"  data-scroll-reveal="enter left and move 50px over 1s">
    <h3><i class="icon-info-sign icon-2x"></i> <?php echo $text_information; ?></h3>
	<nav class="nav vertical" title="<?php echo $text_information; ?>">
		<ul>
			<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			<?php } ?>
		</ul>
	</nav>
  </div>
  <?php } ?>
  <div class="one fourth" data-scroll-reveal="enter bottom and move 50px over 1s">
    <h3><i class="icon-cogs icon-2x"></i> <?php echo $text_service; ?></h3>
	<nav class="nav vertical" title="<?php echo $text_service; ?>">
		<ul>
			<li><a href="<?php echo $contact; ?>"><i class="icon-phone"></i> <?php echo $text_contact; ?></a></li>
			<li><a href="<?php echo $return; ?>"><i class="icon-mail-reply-all"></i> <?php echo $text_return; ?></a></li>
			<li><a href="<?php echo $sitemap; ?>"><i class="icon-sitemap"></i> <?php echo $text_sitemap; ?></a></li>
		</ul>
	</nav>
  </div>
  <div class="one fourth" data-scroll-reveal="enter bottom and move 50px over 1s">
    <h3><i class="icon-magic icon-2x"></i> <?php echo $text_extra; ?></h3>
	<nav class="nav vertical" title="<?php echo $text_extra; ?>">
		<ul>
			<li><a href="<?php echo $manufacturer; ?>"><i class="icon-building"></i> <?php echo $text_manufacturer; ?></a></li>
			<li><a href="<?php echo $voucher; ?>"><i class="icon-tags"></i> <?php echo $text_voucher; ?></a></li>
			<li><a href="<?php echo $affiliate; ?>"><i class="icon-smile"></i> <?php echo $text_affiliate; ?></a></li>
			<li><a href="<?php echo $special; ?>"><i class="icon-star-empty"></i> <?php echo $text_special; ?></a></li>
		</ul>
	</nav>
  </div>
  <div class="one fourth" data-scroll-reveal="enter right and move 50px over 1s">
    <h3><i class="icon-user icon-2x"></i> <?php echo $text_account; ?></h3>
	<nav class="nav vertical" title="<?php echo $text_account; ?>">
		<ul>
		<li><a href="<?php echo $account; ?>"><i class="icon-user"></i> <?php echo $text_account; ?></a></li>
		<li><a href="<?php echo $order; ?>"><i class="icon-folder-open-alt"></i> <?php echo $text_order; ?></a></li>
		<li><a href="<?php echo $wishlist; ?>"><i class="icon-gift"></i> <?php echo $text_wishlist; ?></a></li>
		<li><a href="<?php echo $newsletter; ?>"><i class="icon-envelope-alt"></i> <?php echo $text_newsletter; ?></a></li>
		</ul>
	</nav>
  </div>
</div>
</div>
<div class="author">
	theme: <a href="http://www.web.pc.pl">web.pc.pl - Tworzenie stron WWW</a>
</div>


<script type="text/javascript" src="catalog/view/theme/minimal_pink/groundwork/js/groundwork.all.js"></script>
<script type="text/javascript" src="catalog/view/theme/minimal_pink/js/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/minimal_pink/js/scrollReveal.js"></script>
<script type="text/javascript">
			// The starting defaults.
			var config = {
				after: '0s',
				enter: 'bottom',
				move: '24px',
				over: '0.66s',
				easing: 'ease-in-out',
				viewportFactor: 0.33,
				reset: false,
				init: true
			};
			window.scrollReveal = new scrollReveal( config );
</script>
</body></html>