<?php
$ci = get_instance();
$ci->load->helper('Global_helper');
$ci->load->model('konten_model');
$id_user = ucfirst($this->session->userdata('id'));
$_access = $ci->konten_model->get_user_access($id_user);
$_template = '<li><a href="{URL}" class="{CLASS_ON}"> {TITLE}</a></li>';
?>

<body class="skin-blue">
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="" class="logo"><b>Administrator</b></a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
					<span class="sr-only">Toggle navigation</span>
				</a>
				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<li class="dropdown user user-menu">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="<?php echo $this->session->userdata('foto'); ?>" class="user-image" alt="User Image" />
								<span class="hidden-xs"><?php echo ucfirst($this->session->userdata('username')); ?></span>
							</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header">
									<img src="<?php echo $this->session->userdata('foto'); ?> " class="img-circle" alt="User Image" />
									<p>
										<?php echo ucfirst($this->session->userdata('username')); ?>
									</p>
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-right">
										<?php echo anchor('admin/login/logout', 'Sign out', 'class="btn btn-default btn-flat"') ?>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="<?php echo $this->session->userdata('foto'); ?>" class="img-circle" alt="User Image" />
					</div>
					<div class="pull-left info">
						<p><?php echo ucfirst($this->session->userdata('nama')); ?></p>

					</div>
				</div>
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<li class="treeview">
						<a href="#">
							<span>Profil</span>
							<i class="fa fa-angle-left pull-right"></i>
						</a>
						<ul class="treeview-menu">
							<li>
								<?php
								$profile_sekolah = '';
								$profile_sekolah .= access_menu('dasbor/profile_sekolah', 'Profile Sekolah', $_access, $_template, TRUE);
								if (!empty($profile_sekolah)) { ?>
									<?php echo $profile_sekolah ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$struktur_organisasi = '';
								$struktur_organisasi .= access_menu('dasbor/struktur_organisasi', 'Struktur Organisasi', $_access, $_template, TRUE);
								if (!empty($struktur_organisasi)) { ?>
									<?php echo $struktur_organisasi ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$visi_dan_misi = '';
								$visi_dan_misi .= access_menu('dasbor/visi_dan_misi', 'Visi dan Misi', $_access, $_template, TRUE);
								if (!empty($visi_dan_misi)) { ?>
									<?php echo $visi_dan_misi ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$fasilitas = '';
								$fasilitas .= access_menu('dasbor/fasilitas', 'Fasilitas', $_access, $_template, TRUE);
								if (!empty($fasilitas)) { ?>
									<?php echo $fasilitas ?>
								<?php } ?>
							</li>
						</ul>
					</li>
					<li class="treeview">
						<a href="#">
							<span>Direktori</span>
							<i class="fa fa-angle-left pull-right"></i>
						</a>
						<ul class="treeview-menu">
							<li>
								<?php
								$direktori_guru_staf = '';
								$direktori_guru_staf .= access_menu('dasbor/direktori_guru_staf', 'Direktori Guru & Starf', $_access, $_template, TRUE);
								if (!empty($direktori_guru_staf)) { ?>
									<?php echo $direktori_guru_staf ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$direktori_alumni = '';
								$direktori_alumni .= access_menu('dasbor/direktori_alumni', 'Direktori Alumni', $_access, $_template, TRUE);
								if (!empty($direktori_alumni)) { ?>
									<?php echo $direktori_alumni ?>
								<?php } ?>
							</li>
						</ul>
					</li>

					<?php
					$slide = '';
					$slide .= access_menu('dasbor/slide', 'Slide', $_access, $_template, TRUE);
					if (!empty($slide)) { ?>

						<?php echo $slide ?>
					<?php } ?>

					<?php
					$link = '';
					$link .= access_menu('dasbor/link', 'Link Terkait', $_access, $_template, TRUE);
					if (!empty($link)) { ?>

						<?php echo $link ?>
					<?php } ?>

					<?php
					$berita_pengumuman = '';
					$berita_pengumuman .= access_menu('dasbor/berita_pengumuman', 'Berita & Pengumuman', $_access, $_template, TRUE);
					if (!empty($berita_pengumuman)) { ?>

						<?php echo $berita_pengumuman ?>
					<?php } ?>

					<li class="treeview">
						<a href="#">
							<span>Buku</span>
							<i class="fa fa-angle-left pull-right"></i>
						</a>
						<ul class="treeview-menu">
							<li>
								<?php
								$kategori = '';
								$kategori .= access_menu('dasbor/kategori', 'Kategori Buku', $_access, $_template, TRUE);
								if (!empty($kategori)) { ?>
									<?php echo $kategori ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$buku = '';
								$buku .= access_menu('dasbor/buku', 'Buku', $_access, $_template, TRUE);
								if (!empty($buku)) { ?>
									<?php echo $buku ?>
								<?php } ?>
							</li>
						</ul>
					</li>

					<?php
					$saran_buku = '';
					$saran_buku .= access_menu('dasbor/saran_buku', 'Saran Buku', $_access, $_template, TRUE);
					if (!empty($saran_buku)) { ?>

						<?php echo $saran_buku ?>
					<?php } ?>
					<li class="treeview">
						<a href="#">
							<span>Video</span>
							<i class="fa fa-angle-left pull-right"></i>
						</a>
						<ul class="treeview-menu">
							<li>
								<?php
								$kategori_video = '';
								$kategori_video .= access_menu('dasbor/kategori_video', 'Kategori Video', $_access, $_template, TRUE);
								if (!empty($kategori_video)) { ?>

									<?php echo $kategori_video ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$video_edukasi = '';
								$video_edukasi .= access_menu('dasbor/video_edukasi', 'Video Edukasi', $_access, $_template, TRUE);
								if (!empty($video_edukasi)) { ?>
									<?php echo $video_edukasi ?>
								<?php } ?>
							</li>
						</ul>
					</li>



					<li class="treeview">
						<a href="#">
							<span>Galeri</span>
							<i class="fa fa-angle-left pull-right"></i>
						</a>
						<ul class="treeview-menu">
							<li>
								<?php
								$kategori_galeri = '';
								$kategori_galeri .= access_menu('dasbor/kategori_galeri', 'Kategori Galeri', $_access, $_template, TRUE);
								if (!empty($kategori_galeri)) { ?>

									<?php echo $kategori_galeri ?>
								<?php } ?>
							</li>
							<li>
								<?php
								$galeri = '';
								$galeri .= access_menu('dasbor/galeri', 'Galeri', $_access, $_template, TRUE);
								if (!empty($galeri)) { ?>
									<?php echo $galeri ?>
								<?php } ?>
							</li>
						</ul>
					</li>


					<li class="header">PENGATURAN</li>
					<?php
					$pengaturan = '';
					$pengaturan .= access_menu('dasbor/pengaturan', 'Pengaturan', $_access, $_template, TRUE);
					if (!empty($pengaturan)) { ?>

						<?php echo $pengaturan ?>
					<?php } ?>

					<?php
					$member = '';
					$member .= access_menu('dasbor/member', 'Member', $_access, $_template, TRUE);
					if (!empty($member)) { ?>

						<?php echo $member ?>
					<?php } ?>

					<?php
					$user = '';
					$user .= access_menu('dasbor/user', 'User', $_access, $_template, TRUE);
					if (!empty($user)) { ?>

						<?php echo $user ?>
					<?php } ?>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>
