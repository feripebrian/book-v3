<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dasbor extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('konten_model');
		$this->simple_login->cek_login();
	}

	function index()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'dasbor_view',
			'log_user'	=>	$this->konten_model->log_user_show(),
		);
		$this->load->view('admin/layout/wrapper', $data);
	}


	// ========================================= USER =========================================
	function user()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'user',
			'user'			=> $this->konten_model->user_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function user_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'user_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function user_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_user();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/user_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/user_tambah/');
		}
	}

	function user_edit($id)
	{
		$data = array(
			'title'				=> 'Halaman Administrator',
			'isi'				=> 'user_edit',
			'user_edit'			=> $this->konten_model->user_edit($id),
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function user_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_user($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/user_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/user_edit/' . $id);
		}
	}

	function user_hapus($id)
	{
		$this->konten_model->hapus_user(array('id' => $id), 'tb_user');
		$this->konten_model->hapus_user_akses(array('id_user' => $id), 'tb_user_akses');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/user/');
	}

	// ========================================= BUKU =========================================
	function buku()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'buku',
			'buku'		=> 	$this->konten_model->buku_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function buku_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'buku_tambah',
			'kategori'		=>	$this->konten_model->kategori_id_show(),
			'kelas'			=>	$this->konten_model->kelas_show(),
			'sekolah'		=>	$this->konten_model->sekolah_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function buku_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_buku();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/buku_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/buku_tambah/');
		}
	}

	function buku_edit($id_buku)
	{
		$data = array(
			'title'		=> 'Halaman Administrator',
			'isi'		=> 'buku_edit',
			'kategori'	=>	$this->konten_model->kategori_id_show(),
			'kelas'		=>	$this->konten_model->kelas_show(),
			'sekolah'	=>	$this->konten_model->sekolah_show(),
			'buku_edit'	=> 	$this->konten_model->buku_edit($id_buku)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function buku_update($id_buku)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_buku($id_buku);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/buku_edit/' . $id_buku);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/buku_edit/' . $id_buku);
		}
	}

	function buku_hapus($id_buku)
	{
		$where = array('id_buku' => $id_buku);
		$this->konten_model->hapus_buku($where, 'tb_buku');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/buku/');
	}

	// ========================================= SLIDE =========================================
	function slide()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'slide',
			'slide'		=> 	$this->konten_model->slide_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function slide_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'slide_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function slide_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_slide();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/slide_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/slide_tambah/');
		}
	}

	function slide_edit($id)
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'slide_edit',
			'slide_edit'	=> 	$this->konten_model->slide_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function slide_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_slide($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/slide_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/slide_edit/' . $id);
		}
	}

	function slide_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_slide($where, 'tb_slide');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/slide/');
	}

	// ========================================= LINK TERKAIT =========================================
	function link()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'link',
			'link'		=> 	$this->konten_model->link_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function link_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'link_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function link_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_link();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/link_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/link_tambah/');
		}
	}

	function link_edit($id)
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'link_edit',
			'link_edit'		=> 	$this->konten_model->link_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function link_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_link($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/link_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/link_edit/' . $id);
		}
	}

	function link_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_link($where, 'tb_link');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/link/');
	}
	// ========================================= BERITA & PENGUMUMAN =========================================
	function berita_pengumuman()
	{
		$data = array(
			'title'				=>	'Halaman Administrator',
			'isi'				=>	'berita_pengumuman',
			'berita_pengumuman'	=> 	$this->konten_model->berita_pengumuman_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function berita_pengumuman_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'berita_pengumuman_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function berita_pengumuman_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_berita_pengumuman();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/berita_pengumuman_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/berita_pengumuman_tambah/');
		}
	}

	function berita_pengumuman_edit($id)
	{
		$data = array(
			'title'					 => 'Halaman Administrator',
			'isi'					 => 'berita_pengumuman_edit',
			'berita_pengumuman_edit' => 	$this->konten_model->berita_pengumuman_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function berita_pengumuman_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_berita_pengumuman($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/berita_pengumuman_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/berita_pengumuman_edit/' . $id);
		}
	}

	function berita_pengumuman_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_berita_pengumuman($where, 'tb_article');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/berita_pengumuman/');
	}

	// ========================================= KATEGORI =========================================
	function kategori()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'kategori',
			'kategori'	=> $this->konten_model->kategori_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'kategori_tambah',
			'maxid'			=> $this->konten_model->kategori_maxid()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function kategori_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_kategori();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_tambah/');
		}
	}

	function kategori_edit($id)
	{
		$data = array(
			'title'				=> 'Halaman Administrator',
			'isi'				=> 'kategori_edit',
			'kategori'		=>	$this->konten_model->kategori_show(),
			'kategori_edit'	=> $this->konten_model->kategori_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_kategori($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_edit/' . $id);
		}
	}

	function kategori_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_kategori($where, 'tb_kategori');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/kategori/');
	}

	// ========================================= KATEGORI VIDEO =========================================
	function kategori_video()
	{
		$data = array(
			'title'			=>	'Halaman Administrator',
			'isi'			=>	'kategori_video',
			'kategori_video' => $this->konten_model->kategori_video_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_video_tambah()
	{
		$data = array(
			'title'	=> 'Halaman Administrator',
			'isi'	=> 'kategori_video_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function kategori_video_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_kategori_video();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_video_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_video_tambah/');
		}
	}

	function kategori_video_edit($id)
	{
		$data = array(
			'title'					=> 'Halaman Administrator',
			'isi'					=> 'kategori_video_edit',
			'kategori_video_edit'	=> $this->konten_model->kategori_video_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_video_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_kategori_video($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_video_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_video_edit/' . $id);
		}
	}

	function kategori_video_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_kategori_video($where, 'tb_video_kategori');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/kategori_video/');
	}

	// ========================================= SARAN BUKU =========================================
	function saran_buku()
	{
		$data = array(
			'title'			=>	'Halaman Administrator',
			'isi'			=>	'saran_buku',
			'saran_buku'	=> $this->konten_model->saran_buku_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function saran_buku_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_saran_buku($where, 'tb_saran_buku');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/saran_buku/');
	}


	// ========================================= VIDEO EDUKASI =========================================
	function video_edukasi()
	{
		$data = array(
			'title'			=>	'Halaman Administrator',
			'isi'			=>	'video_edukasi',
			'video_edukasi'	=> 	$this->konten_model->video_edukasi_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function video_edukasi_tambah()
	{
		$data = array(
			'title'		=> 'Halaman Administrator',
			'isi'		=> 'video_edukasi_tambah',
			'kategori'	=>	$this->konten_model->kategori_video_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function video_edukasi_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_video_edukasi();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/video_edukasi_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/video_edukasi_tambah/');
		}
	}

	function video_edukasi_edit($id)
	{
		$data = array(
			'title'				=> 'Halaman Administrator',
			'isi'				=> 'video_edukasi_edit',
			'video_edukasi_edit' => 	$this->konten_model->video_edukasi_edit($id),
			'kategori'			=>	$this->konten_model->kategori_video_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function video_edukasi_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_video_edukasi($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/video_edukasi_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/video_edukasi_edit/' . $id);
		}
	}

	function video_edukasi_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_video_edukasi($where, 'tb_video');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/video_edukasi/');
	}

	// ========================================= PENGATURAN =========================================
	function pengaturan()
	{
		$data = array(
			'title'			=>	'Halaman Administrator',
			'isi'			=>	'pengaturan',
			'pengaturan'	=> $this->konten_model->pengaturan_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function pengaturan_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_pengaturan($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/pengaturan/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/pengaturan/');
		}
	}

	// ========================================= PROFILE SEKOLAH =========================================
	function struktur_organisasi()
	{
		$data = array(
			'title'				=>	'Halaman Administrator',
			'isi'				=>	'struktur_organisasi',
			'struktur_organisasi'	=> $this->konten_model->struktur_organisasi_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function struktur_organisasi_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->struktur_organisasi($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/struktur_organisasi/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/struktur_organisasi/');
		}
	}
	// ========================================= STRUKTUR ORGANISASI =========================================
	function profile_sekolah()
	{
		$data = array(
			'title'				=>	'Halaman Administrator',
			'isi'				=>	'profile_sekolah',
			'profile_sekolah'	=> $this->konten_model->profile_sekolah_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function profile_sekolah_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_profile_sekolah($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/profile_sekolah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/profile_sekolah/');
		}
	}
	// ========================================= FASILITAS =========================================
	function fasilitas()
	{
		$data = array(
			'title'				=>	'Halaman Administrator',
			'isi'				=>	'fasilitas',
			'fasilitas'	=> $this->konten_model->fasilitas_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function fasilitas_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_fasilitas($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/fasilitas/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/fasilitas/');
		}
	}

	// ========================================= VISI DAN MISI =========================================
	function visi_dan_misi()
	{
		$data = array(
			'title'				=>	'Halaman Administrator',
			'isi'				=>	'visi_dan_misi',
			'visi_dan_misi'	=> $this->konten_model->visi_dan_misi_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function visi_dan_misi_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_visi_dan_misi($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/visi_dan_misi/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/visi_dan_misi/');
		}
	}
	// ========================================= DIREKTORI GURU STAF =========================================
	function direktori_guru_staf()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'direktori_guru_staf',
			'direktori_guru_staf'		=> 	$this->konten_model->direktori_guru_staf_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function direktori_guru_staf_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'direktori_guru_staf_tambah',
			'kategori'		=>	$this->konten_model->kategori_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function direktori_guru_staf_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_direktori_guru_staf();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/direktori_guru_staf_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/direktori_guru_staf_tambah/');
		}
	}

	function direktori_guru_staf_edit($id)
	{
		$data = array(
			'title'					=> 'Halaman Administrator',
			'isi'					=> 'direktori_guru_staf_edit',
			'kategori'				=>	$this->konten_model->kategori_show(),
			'direktori_guru_staf'	=> 	$this->konten_model->direktori_guru_staf_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function direktori_guru_staf_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_direktori_guru_staf($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/direktori_guru_staf_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/direktori_guru_staf_edit/' . $id);
		}
	}

	function direktori_guru_staf_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_direktori_guru_staf($where, 'tb_direktori_guru_staf');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/direktori_guru_staf/');
	}
	// ========================================= DIREKTORI ALUMNI =========================================
	function direktori_alumni()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'direktori_alumni',
			'direktori_alumni'		=> 	$this->konten_model->direktori_alumni_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function direktori_alumni_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'direktori_alumni_tambah',
			'kategori'		=>	$this->konten_model->kategori_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function direktori_alumni_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_direktori_alumni();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/direktori_alumni_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/direktori_alumni_tambah/');
		}
	}

	function direktori_alumni_edit($id)
	{
		$data = array(
			'title'					=> 'Halaman Administrator',
			'isi'					=> 'direktori_alumni_edit',
			'kategori'				=>	$this->konten_model->kategori_show(),
			'direktori_alumni'	=> 	$this->konten_model->direktori_alumni_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function direktori_alumni_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_direktori_alumni($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/direktori_alumni_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/direktori_alumni_edit/' . $id);
		}
	}

	function direktori_alumni_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_direktori_alumni($where, 'tb_direktori_alumni');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/direktori_alumni/');
	}

	// ========================================= KATEGORI GALERI =========================================
	function kategori_galeri()
	{
		$data = array(
			'title'			=>	'Halaman Administrator',
			'isi'			=>	'kategori_galeri',
			'kategori_galeri' => $this->konten_model->kategori_galeri_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_galeri_tambah()
	{
		$data = array(
			'title'	=> 'Halaman Administrator',
			'isi'	=> 'kategori_galeri_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function kategori_galeri_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_kategori_galeri();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_galeri_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_galeri_tambah/');
		}
	}

	function kategori_galeri_edit($id)
	{
		$data = array(
			'title'					=> 'Halaman Administrator',
			'isi'					=> 'kategori_galeri_edit',
			'kategori_galeri_edit'	=> $this->konten_model->kategori_galeri_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function kategori_galeri_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_kategori_galeri($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/kategori_galeri_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/kategori_galeri_edit/' . $id);
		}
	}

	function kategori_galeri_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_kategori_galeri($where, 'tb_galeri_kategori');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/kategori_galeri/');
	}
	// ========================================= GALERI =========================================
	function galeri()
	{
		$data = array(
			'title'		=>	'Halaman Administrator',
			'isi'		=>	'galeri',
			'galeri'		=> 	$this->konten_model->galeri_show(),
			'kategori'		=> 	$this->konten_model->kategori_galeri_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function galeri_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'galeri_tambah',
			'kategori'		=>	$this->konten_model->kategori_galeri_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	public function galeri_add()
	{
		if ($this->input->post('submit')) {
			$this->konten_model->tambah_galeri();
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/galeri_tambah/');
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/galeri_tambah/');
		}
	}

	function galeri_edit($id)
	{
		$data = array(
			'title'				=> 'Halaman Administrator',
			'isi'				=> 'galeri_edit',
			'kategori'			=>	$this->konten_model->kategori_galeri_show(),
			'galeri'			=> 	$this->konten_model->galeri_edit($id)
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function galeri_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_galeri($id);
			$this->session->set_flashdata('success', 'Data berhasil di simpan');
			redirect('admin/dasbor/galeri_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Data gagal di simpan');
			redirect('admin/dasbor/galeri_edit/' . $id);
		}
	}

	function galeri_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_galeri($where, 'tb_galeri');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/galeri/');
	}

	// ========================================= MEMBER =========================================
	function member()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'member',
			'member'			=> $this->konten_model->member_show()
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function member_tambah()
	{
		$data = array(
			'title'			=> 'Halaman Administrator',
			'isi'			=> 'member_tambah'
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function member_add()
	{
		$this->form_validation->set_rules('nama', 		'Nama Lengkap', 			'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('kategori', 	'Kategori', 				'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('id_member', 	'NIK / NIS', 				'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('email', 		'Email', 					'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('password', 	'Password', 				'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('passconf', 	'Password Confirmation', 	'required|matches[password]', array('required' => '%s Harus di isi.', 'matches' => '%s Harus sama dengan password'));

		if ($this->form_validation->run() != FALSE) {
			if ($this->input->post('submit')) {
				$this->konten_model->tambah_member();
				$this->session->set_flashdata('success', 'Register Member Berhasil');
				redirect('admin/dasbor/member_tambah/');
			}
		} else {
			$this->session->set_flashdata('failed', 'Register gagal.');
			$data = array(
				'title'			=> 'Halaman Administrator',
				'isi'			=> 'member_tambah'
			);
			$this->load->view('admin/layout/wrapper', $data);
		}
	}

	function member_edit($id)
	{
		$data = array(
			'title'				=> 'Halaman Administrator',
			'isi'				=> 'member_edit',
			'member_edit'		=> $this->konten_model->member_edit($id),
			'member_kategori'	=> $this->konten_model->member_kategori(),
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function member_password_edit($id)
	{
		$data = array(
			'title'					=> 'Halaman Administrator',
			'isi'					=> 'member_password_edit',
			'member_password_edit'	=> $this->konten_model->member_edit($id),
		);
		$this->load->view('admin/layout/wrapper', $data);
	}

	function member_update($id)
	{
		if ($this->input->post('submit')) {
			$this->konten_model->update_member($id);
			$this->session->set_flashdata('success', 'Update Berhasil');
			redirect('admin/dasbor/member_edit/' . $id);
		} else {
			$this->session->set_flashdata('failed', 'Update Gagal');
			redirect('admin/dasbor/member_edit/' . $id);
		}
	}

	function member_password_update($id)
	{
		$this->form_validation->set_rules('password', 	'Password', 				'required', array('required' => '%s Harus di isi.'));
		$this->form_validation->set_rules('passconf', 	'Password Confirmation', 	'required|matches[password]', array('required' => '%s Harus di isi.', 'matches' => '%s Harus sama dengan password'));

		if ($this->form_validation->run() != FALSE) {
			if ($this->input->post('submit')) {
				$this->konten_model->update_password_member($id);
				$this->session->set_flashdata('success', 'Update Berhasil');
				redirect('admin/dasbor/member_password_update/' . $id);
			}
		} else {
			$this->session->set_flashdata('failed', 'Reset Password Gagal.');
			$data = array(
				'title'					=> 'Halaman Administrator',
				'isi'					=> 'member_password_edit',
				'member_password_edit'	=> $this->konten_model->member_edit($id),
			);
			$this->load->view('admin/layout/wrapper', $data);
		}
	}

	function member_hapus($id)
	{
		$where = array('id' => $id);
		$this->konten_model->hapus_member($where, 'tb_member');
		$this->session->set_flashdata('success', 'Data berhasil di hapus');
		redirect('admin/dasbor/member/');
	}
}
