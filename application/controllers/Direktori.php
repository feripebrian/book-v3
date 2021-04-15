<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Direktori extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->model('interface_model');
		$this->load->library('pagination');
		$this->visitor->cek_visitor();
	}

	public function index()
	{
		$menu['slide']             = $this->interface_model->slide_show();
		$menu['direktori']         = $this->interface_model->direktori();
		$menu['kategori']         = $this->interface_model->kategori_show();
		$data['koleksi_buku']     = $this->interface_model->book_new_show();
		$data['jumlah_buku']     = $this->interface_model->jumlah_book_show();

		$this->load->view('header', $menu);
		$this->load->view('welcome_message', $data);
		$this->load->view('footer');
	}
}
