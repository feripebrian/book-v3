<div class="col-lg-8 col-md-8">
	<div class="tab-content" id="v-pills-tabContent">
		<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
			<div class="service_details_info">
				<h4>Informasi Berita & Pengumuman</h4>
				<?php foreach ($informasi as $show) { ?>
					<h3><?php echo $show['name']; ?></h3>
					<?php echo $show['description']; ?>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- service_details_start  -->
