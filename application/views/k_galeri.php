<div class="col-lg-8 col-md-8">

	<h3>Image Gallery</h3>
	<div class="row gallery-item">
		<?php foreach ($kat_galeri as $img) { ?>

			<div class="col-md-4">
				<a href="<?php echo $img['gambar'] ?>" class="img-pop-up" title="<?php echo $img['keterangan'] ?>">
					<div class="single-gallery-image" style="background: url(<?php echo $img['gambar'] ?>);"></div>
				</a>
			</div>
		<?php } ?>
	</div>

</div>
</div>
</div>
</div>
<!-- service_details_start  -->
