<?php include('header.php'); ?>
<style>
	body#login::before {
    content: "";
    background-color: 	#0088cc;
;
    position: absolute;
    top: 0;
    /* z-index: 1; */
    left: 0;
    width: 100%;
    height: 100%;
}
	
</style>
<body id="login">
    <div class="container" style="position: relative; background-image: url(images/.jpg); layer-background-image: url(.jpg); border: 1px none #fff; background-color: 	#0088cc;">
		<div class="row-fluid">
			<div class="span6"><div class="title_index"><?php include('title_index.php'); ?></div></div>
			<div class="span6"><div class="pull-right"><?php include('login_form.php'); ?></div></div>
		</div>
		<div class="row-fluid">
			<div class="span12">
			  <div class="index-footer"></div></div>
		</div>
			<?php include('link.php'); ?>
			<?php include('footer.php'); ?>
    </div>

<?php include('script.php'); ?>
	
</body>
</html>