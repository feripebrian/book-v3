<?php
class Interface_model extends CI_Model
{


	function book_new_show()
	{
		$data = $this->db->query("SELECT * FROM tb_buku WHERE STATUS='1' ORDER BY date_upload DESC LIMIT 10 ;");
		return $data->result_array();
	}

	function jumlah_book_show()
	{
		$data = $this->db->query("SELECT COUNT(*) AS jumlah FROM tb_buku WHERE STATUS='1';");
		return $data->result_array();
	}

	function book_show()
	{
		$data = $this->db->query("SELECT * FROM  tb_buku b, tb_sekolah s WHERE b.id_sekolah = s.id AND STATUS='1' ORDER BY date_upload DESC;");
		return $data->result_array();
	}

	function baca_buku($id_buku)
	{
		$query = $this->db->query("SELECT * FROM tb_buku WHERE id_buku='$id_buku';");
		return $query->result_array();
	}

	function slide_show()
	{
		$data = $this->db->query("SELECT * FROM tb_slide WHERE STATUS='1';");
		return $data->result_array();
	}
	function kategori_show()
	{
		$data = $this->db->query("SELECT * FROM tb_kategori WHERE STATUS='1';");
		return $data->result_array();
	}
	function kategori_video_show()
	{
		$data = $this->db->query("SELECT * FROM tb_video_kategori");
		return $data->result_array();
	}

	function kategori_id($kategori)
	{
		$data = $this->db->query("SELECT * FROM  tb_buku b, tb_sekolah s, tb_kategori k WHERE b.id_sekolah = s.id AND b.kategori = k.kategori AND b.kategori ='$kategori';");
		return $data->result_array();
	}


	function saran_buku()
	{
		$data = array(
			"nama"        => $this->input->post('nama'),
			"judul_buku"  => $this->input->post('judul_buku'),
			"penerbit"    => $this->input->post('penerbit'),
			"pengarang"   => $this->input->post('pengarang'),
			"tahun"       => $this->input->post('tahun'),
			"date_upload" => date('Y-m-d H:i:s')
		);
		$this->db->insert('tb_saran_buku', $data);
	}

	function buku_tamu()
	{
		$data = array(
			"name"		 => $this->input->post('name'),
			"email"    	 => $this->input->post('email'),
			"desc"		 => $this->input->post('desc'),
			"created_at" => date('Y-m-d H:i:s'),
		);
		$this->db->insert('tb_bukutamu', $data);
	}
	function kategori_video_id($kategori)
	{
		$data = $this->db->query("SELECT *, v.id AS id_video FROM  tb_video v, tb_video_kategori vk WHERE v.video_kategori = vk.id AND vk.slug ='$kategori';");
		return $data->result_array();
	}

	function video_show()
	{
		$data = $this->db->query("SELECT * FROM tb_video WHERE STATUS='1' ORDER BY date_upload DESC;");
		return $data->result_array();
	}

	function video_show_id($id)
	{
		$query = $this->db->query("SELECT * FROM tb_video WHERE id='$id';");
		return $query->result_array();
	}

	function profile_show()
	{
		$query = $this->db->query("SELECT * FROM tb_konten WHERE id='1';");
		return $query->result_array();
	}
	function struktur_organisasi_show()
	{
		$query = $this->db->query("SELECT * FROM tb_konten WHERE id='3';");
		return $query->result_array();
	}

	function visi_dan_misi_show()
	{
		$query = $this->db->query("SELECT * FROM tb_konten WHERE id='2';");
		return $query->result_array();
	}
	function direktori_guru_staf_show()
	{
		$query = $this->db->query("SELECT * FROM tb_direktori_guru_staf ");
		return $query->result_array();
	}
	function direktori_alumni_show()
	{
		$query = $this->db->query("SELECT * FROM tb_direktori_alumni ");
		return $query->result_array();
	}
	function kontak_show()
	{
		$query = $this->db->query("SELECT * FROM tb_direktori_alumni ");
		return $query->result_array();
	}
	function fasilitas_show()
	{
		$query = $this->db->query("SELECT * FROM tb_konten WHERE id='4';");
		return $query->result_array();
	}
	function galeri_show()
	{
		$query = $this->db->query("SELECT * FROM tb_galeri WHERE STATUS='1';");
		return $query->result_array();
	}
	function get_galeri_list($limit, $start)
	{
		$query = $this->db->get('tb_galeri', $limit, $start);
		return $query;
	}



	function link_show()
	{
		$data = $this->db->query("SELECT * FROM  tb_link ");
		return $data->result_array();
	}
	function berita_show()
	{
		$data = $this->db->query("SELECT * FROM  tb_article WHERE article_category='1'");
		return $data->result_array();
	}
	function pengumuman_show()
	{
		$data = $this->db->query("SELECT * FROM  tb_article WHERE article_category='2'");
		return $data->result_array();
	}
	function informasi($slug)
	{
		$data = $this->db->query("SELECT * FROM  tb_article WHERE slug='$slug'");
		return $data->result_array();
	}
	function k_gakeri()
	{
		$data = $this->db->query("SELECT * FROM  tb_galeri_kategori ");
		return $data->result_array();
	}
	function galeris_show($id)
	{
		$data = $this->db->query("SELECT * FROM  tb_galeri WHERE kategori='$id' ");
		return $data->result_array();
	}
}
