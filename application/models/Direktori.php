<?php
class Direktori extends CI_Model
{

	function direktori()
	{
		$data = $this->db->query("SELECT * FROM  tb_kategori_direktori ");
		return $data->result_array();
	}
}
