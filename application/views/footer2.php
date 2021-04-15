<div class="service_details_area">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4">
				<div class="blog_right_sidebar">

					<aside class="single_sidebar_widget popular_post_widget">
						<h3 class="widget_title">Pengumuman</h3>
						<?php foreach ($pengumuman as $peng) { ?>
							<div class="media post_item">
								<div class="media-body">
									<?php echo anchor('welcome/informasi_berita/' . $peng['slug'], '<h5>' . $peng['name'] . '</h5>') ?>
									<p><?php echo $peng['created_at'] ?></p>
								</div>
							</div>
						<?php } ?>
					</aside>
				</div>
				<div class="service_area">
					<div class="container">
						<div class="row">
							<div class="col-xl-12">
								<div class="section_title mb-50 text-center">
									<h4>
										Link Terkait
									</h4>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-12">
								<div class="service_active owl-carousel">
									<?php foreach ($link as $key) { ?>
										<div class="single_service">
											<div class="thumb">
												<img src="<?php echo $key['image'] ?>" alt="">
											</div>
											<div class="service_info">
												<h6><a target="_blank" href="<?php echo $key['url'] ?>"><?php echo $key['name'] ?></a></h6>
											</div>
										</div>
									<?php } ?>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-8 col-md-8">
				<div class="service_area">
					<div class="container">
						<div class="row">
							<div class="col-xl-12">
								<div class="section_title mb-50 text-center">
									<h4>
										Berita Sekolah
									</h4>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xl-12">
								<div class="service_active owl-carousel">
									<?php foreach ($berita as $ber) { ?>
										<div class="single_service">
											<div class="thumb">
												<img src="<?php echo $ber['image'] ?>" alt="">
											</div>
											<div class="service_info">
												<?php echo anchor('welcome/informasi_berita/' . $ber['slug'], '<h3>' . $ber['name'] . '</h3>') ?>
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
	</div>
</div>
<div class="contact_action_area" style="background-image: url(<?php echo $this->session->userdata('background'); ?>);">
</div>
<!-- footer start -->
<footer class="footer">
	<div class="copy-right_text">
		<div class="container">
			<div class="footer_border"></div>
			<div class="row">
				<div class="col-lg-6">
					<p class="copy_right text-center">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>
							document.write(new Date().getFullYear());
						</script> All rights reserved | This website is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="" target="_blank">Beavers</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
				<div class="col-lg-6">
					<?php
					$date       = date("Y-m-d");
					$pengunjunghariini  = $this->db->query("SELECT * FROM tb_visitor WHERE date='" . $date . "' GROUP BY ip")->num_rows();
					$dbpengunjung       = $this->db->query("SELECT COUNT(hits) as hits FROM tb_visitor")->row();
					$totalpengunjung    = isset($dbpengunjung->hits) ? ($dbpengunjung->hits) : 0;
					$bataswaktu         = time() - 300;
					$pengunjungonline   = $this->db->query("SELECT * FROM tb_visitor WHERE online > '" . $bataswaktu . "'")->num_rows();

					?>
					<table style=" font-size: 16px;">
						<tbody>
							<tr>
								<td>Pengunjung Hari ini</td>
								<td>: <?php echo $pengunjunghariini ?> Orang</span></td>
							</tr>
							<tr>
								<td>Total Pengunjung</td>
								<td>: <?php echo $totalpengunjung ?> Orang</td>
							</tr>
							<tr>
								<td>Pengunjung Online</td>
								<td>: <?php echo $pengunjungonline ?> Orang</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
</footer>
<!--/ footer end  -->
<!-- Button trigger modal -->



<!-- JS here -->
<script src="<?php echo base_url(); ?>assets/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/popper.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/owl.carousel.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/isotope.pkgd.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/ajax-form.js"></script>
<script src="<?php echo base_url(); ?>assets/js/waypoints.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.counterup.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/imagesloaded.pkgd.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/scrollIt.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.scrollUp.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/wow.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/nice-select.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.slicknav.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.magnific-popup.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/plugins.js"></script>
<script src="<?php echo base_url(); ?>assets/js/gijgo.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/slick.min.js"></script>



<!--contact js-->
<script src="<?php echo base_url(); ?>assets/js/contact.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.ajaxchimp.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.form.js"></script>
<script src="<?php echo base_url(); ?>assets/js/jquery.validate.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/mail-script.js"></script>


<script src="<?php echo base_url(); ?>assets/js/main.js"></script>
<script>
	$('#datepicker').datepicker({
		iconsLibrary: 'fontawesome',
		icons: {
			rightIcon: '<span class="fa fa-caret-down"></span>'
		}
	});
	$('#datepicker2').datepicker({
		iconsLibrary: 'fontawesome',
		icons: {
			rightIcon: '<span class="fa fa-caret-down"></span>'
		}

	});
</script>

<!-- DATA TABES SCRIPT -->
<script src="<?php echo base_url(); ?>assets/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		$("#example1").dataTable();
		$('#example2').dataTable({
			"bPaginate": true,
			"bLengthChange": false,
			"bFilter": false,
			"bSort": true,
			"bInfo": true,
			"bAutoWidth": false
		});
	});
</script>






</body>

</html>
