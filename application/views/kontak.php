<div class="col-lg-8 col-md-8">
	<div class="accordion_area">
		<div class="faq_ask">

			<h3>Alamat</h3>
			<?php echo $this->session->userdata('alamat'); ?>
			<h3>Buku Tamu</h3>

			<?php
			if ($this->session->flashdata('message')) {
				echo '<p> ' . $this->session->flashdata('message') . '</p>';
			}
			echo validation_errors('<p>', '</p>');
			?>
			<?php if ($this->session->flashdata('berhasil')) { ?>
				<div class="alert alert-success alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<h4> <i class="icon fa fa-check"></i> Success!</h4>
					<?php echo $this->session->flashdata('berhasil'); ?>
				</div>
			<?php } elseif ($this->session->flashdata('gagal')) { ?>
				<div class="alert alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<h4> <i class="icon fa fa-ban"></i> failed!</h4>
					<?php echo $this->session->flashdata('gagal'); ?>
				</div>
			<?php } ?>
			<?php echo form_open('welcome/buku_tamu', 'class="form-contact contact_form"  novalidate="novalidate"'); ?>
			<div class="row">
				<div class="col-xl-12">
					<div class="form-group" style="margin-bottom: 10px;">
						<?php echo form_input('name', '', 'class="form-control" placeholder="Nama" style="height: 30px;" '); ?>
						<?php if ($this->session->flashdata('name')) {
							echo $this->session->flashdata('name');
						} ?>
					</div>
					<div class="form-group" style="margin-bottom: 10px;">
						<?php echo form_input('email', '', 'class="form-control" placeholder="Email" style="height: 30px;"'); ?>
						<?php if ($this->session->flashdata('email')) {
							echo $this->session->flashdata('email');
						} ?>
					</div>
				</div>
				<div class="col-xl-12">
					<div class="form-group" style="margin-bottom: 10px;">
						<textarea name="desc" class="form-control"></textarea>
						<?php if ($this->session->flashdata('name')) {
							echo $this->session->flashdata('name');
						} ?>
					</div>
				</div>
			</div>
			<div class="form-group mt-3">
				<?php echo form_submit('kirim', 'Submit', 'class="button button-contactForm boxed-btn"'); ?>
			</div>
			<?php echo form_close(); ?>
		</div>
	</div>

</div>
</div>
</div>
</div>
<!-- service_details_start  -->
