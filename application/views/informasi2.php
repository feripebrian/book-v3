<!--================Blog Area =================-->
<section class="blog_area single-post-area section-padding">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 posts-list">
				<div class="row">
					<div class="col-12">
						<h2 class="contact-title">Informasi Berita & Pengumuman</h2>
					</div>
					<div class="col-lg-12">
						<?php foreach ($informasi as $show) { ?>
							<h3><?php echo $show['name']; ?></h3>
							<?php echo $show['description']; ?>
						<?php } ?>
					</div>
				</div>
			</div>
