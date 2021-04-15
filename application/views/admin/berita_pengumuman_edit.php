<!-- Right side column. Contains the navbar and content of the page -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			EDIT BERITA & PEGUMUMAN
		</h1>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">

				<div class="box">
					<div class="box-header">
						<?php if ($this->session->flashdata('success')) { ?>
							<div class="alert alert-success alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<h4> <i class="icon fa fa-check"></i> Success!</h4>
								<?php echo $this->session->flashdata('success'); ?>
							</div>
						<?php } elseif ($this->session->flashdata('failed')) { ?>
							<div class="alert alert-danger alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<h4> <i class="icon fa fa-check"></i> failed!</h4>
								<?php echo $this->session->flashdata('failed'); ?>
							</div>
						<?php } ?>

					</div><!-- /.box-header -->
					<div class="box-body">
						<?php foreach ($berita_pengumuman_edit  as $bpe) { ?>
							<?php echo form_open('admin/dasbor/berita_pengumuman_update/' . $bpe['id'], 'role="form"'); ?>

							<div class="box-body">
								<div class="form-group">
									<label>Judul</label>
									<input type="text" name="name" value="<?php echo $bpe['name'] ?>" class="form-control" placeholder="Judul">
								</div>
								<div class="form-group">
									<label>Isi Berita</label>
									<textarea id="editor-ckeditor" name="description"><?php echo $bpe['description'] ?></textarea>
								</div>

								<div class="form-group">
									<label>Kategori</label>
									<select class="form-control" name="article_category">
										<option value="" <?php echo set_select('kategori', '', TRUE); ?>>Pilih Kategori</option>
										<option value="1" <?php $answer = $bpe['article_category'];
															if ($answer == "1") {
																echo 'selected="selected"';
															}
															?>> Berita</option>
										<option value="2" <?php $answer = $bpe['article_category'];
															if ($answer == "2") {
																echo 'selected="selected"';
															}
															?>> Pengumuman</option>
									</select>
								</div>

								<div class="form-group">
									<label>Gambar</label>
									<div class="input-group input-group-sm">
										<input type="text" id="as" name="image" value="<?php echo $bpe['image'] ?>" placeholder="Icon" class="form-control">
										<span class="input-group-btn">
											<button class="btn btn-info btn-flat" type="button" data-toggle="modal" data-target=".bd-fm">Slect</button>
											<div class="modal fade bd-fm" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<iframe width="1000" height="550" frameborder="0" id='image' src="<?php echo base_url() ?>filemanager/dialog.php?type=1&field_id=as"></iframe>
												</div><!-- /.modal-dialog -->
											</div><!-- /.modal -->
										</span>
									</div>
								</div>

								<div class="form-group">
									<label>Status</label>
									<div class="radio">
										<label>
											<input type="radio" name="status" id="status1" value="1" <?php $answer = $bpe['status'];
																										if ($answer == "1") {
																											echo 'checked="Correct"';
																										}
																										?>>
											Aktif
										</label>
									</div>
									<div class="radio">
										<label>
											<input type="radio" name="status" id="status2" value="0" <?php $answer = $bpe['status'];
																										if ($answer == "0") {
																											echo 'checked="Correct"';
																										}
																										?>>
											Tidak Aktif
										</label>
									</div>
								</div>
							</div><!-- /.box-body -->

							<div class="box-footer">
								<?php echo form_submit('submit', 'Simpan', 'class="btn btn-primary"'); ?>
							<?php } ?>
							</div>
							<?php echo form_close(); ?>
					</div><!-- /.box-body -->
				</div><!-- /.box -->
			</div><!-- /.col -->
		</div><!-- /.row -->
	</section><!-- /.content -->
</div><!-- /.content-wrapper -->
