<!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            TAMBAH VIDEO EDUKASI
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-xs-12">

              <div class="box">
                <div class="box-header">
                  <?php if ($this->session->flashdata('success')) {?>
                    <div class="alert alert-success alert-dismissable">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                       <h4>  <i class="icon fa fa-check"></i> Success!</h4>
                      <?php echo $this->session->flashdata('success');?>
                    </div>
                  <?php }elseif ($this->session->flashdata('failed')) {?>
                    <div class="alert alert-danger alert-dismissable">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                      <h4>  <i class="icon fa fa-check"></i> failed!</h4>
                      <?php echo $this->session->flashdata('failed');?>
                    </div>
                  <?php }?>

                </div><!-- /.box-header -->
                <div class="box-body">
                  <?php echo form_open('admin/dasbor/video_edukasi_add/','role="form"');?>

                    <div class="box-body">
                      <div class="form-group">
                        <label>Judul Video</label>
                        <?php echo form_input('judul','','class="form-control" placeholder="Judul Buku" required');?>
                      </div>
                      <div class="form-group">
                        <label>Keterangan</label>
                        <textarea id="editor-ckeditor" name="keterangan"></textarea>
                      </div>

                      <div class="form-group">
                        <label>Link Video</label>
                        <textarea class="form-control" rows="3" name="link"></textarea>
                      </div>

                      <div class="form-group">
                        <label>Kategori</label>
                        <select class="form-control" name="kategori">
                          <option value=""    <?php echo  set_select('kategori', '', TRUE); ?> >Pilih Kategori</option>
                          <?php foreach($kategori  as $row){ ?>
                            <option value="<?php echo $row['id']?>" <?php echo set_select('kategori', $row['kategori']);?>>
                              <?php echo $row['kategori']?></option>
                          <?php }?>
                        </select>
                      </div> 

                      <div class="form-group">
                        <label>Status</label>
                        <div class="radio">
                          <label>
                            <input type="radio" name="status" id="status1" value="1">
                            Aktif
                          </label>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="status" id="status2" value="0">
                            Tidak Aktif
                          </label>
                        </div>
                      </div>
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                      <?php echo form_submit('submit', 'Simpan','class="btn btn-primary"');?>
                    </div>
                  <?php echo form_close();?>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->