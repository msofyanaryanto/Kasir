<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanStok  extends CI_Controller{
 
	function __construct(){
		parent::__construct();	
		$this->load->helper('rupiah_helper');
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

			$databind = array(
				'listStok' => $query
			);
            $data = array('contents' => 'Dashboard/laporan/laporan_stok',
						  'title'	 => 'Laporan Stok',
						  'linkTo'	=> 'laporanStok',
						  'data' 	=> $databind,
							);
			$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

}
?>
