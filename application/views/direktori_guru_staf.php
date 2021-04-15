<div class="col-lg-8 col-md-8">
	<div class="accordion_area">
		<div class="faq_ask">
			<h3>Direktori Guru & Starf</h3>
			<div id="accordion">
				<?php foreach ($direktori_guru_staf as $show) { ?>
					<div class="card">
						<div class="card-header">
							<h5 class="mb-0">
								<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#<?php echo $show['id'] ?>" aria-expanded="false" aria-controls="<?php echo $show['id'] ?>">
									<div class="blog-author">
										<div class="media align-items-center">
											<img style="width: 90px;height: 90px;border-radius: 50px;margin-right: 9px;" class="img-fluid" src="<?php echo $show['foto'] ?>" alt="">
											<div class="media-body">
												<h4><?php echo $show['nama'] ?></h4>
											</div>
										</div>
									</div>
								</button>
							</h5>
						</div>
						<div id="<?php echo $show['id'] ?>" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion" style="">
							<div class="card-body">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td>NIP</td>
											<td><?php echo $show['nip'] ?></td>
										</tr>
										<tr>
											<td>Guru / Staf</td>
											<td><?php echo $show['studi'] ?></td>
										</tr>
										<tr>
											<td>Tempat Tangal Lahir</td>
											<td><?php echo $show['tempat'] ?>, <?php echo $show['tanggal_lahir'] ?> </td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
<!-- service_details_start  -->
