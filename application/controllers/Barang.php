<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
	}

	
	function index(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$query = $this->db->query("SELECT
			db_web.ref_kategori.kategori, 
			db_web.ref_barang.*, 
			db_web.ref_pembelian_barang.id_kategori
		FROM
			db_web.ref_pembelian_barang
			INNER JOIN
			db_web.ref_kategori
			ON 
				db_web.ref_pembelian_barang.id_kategori = db_web.ref_kategori.id_kategori
			INNER JOIN
			db_web.ref_barang
			ON 
				db_web.ref_barang.kode_barang = db_web.ref_pembelian_barang.id_barang")->result();
			$data = array('contents' => 'Dashboard/barang/index',
						  'title'	 => 'Data Barang',
						  'linkTo'	=> 'barang',
						  'data' 	=> $query,
							);
				$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

}
?>
