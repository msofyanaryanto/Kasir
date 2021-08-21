<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanPembelian  extends CI_Controller{
 
	function __construct(){
		parent::__construct();	
		$this->load->helper('rupiah_helper');
	}

	
	function index(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$listPembelian =  $this->db
            ->select('
            ref_pembelian_barang.nama_barang,
            ref_pembelian_barang.createdAt,
            ref_kategori.kategori,
            ref_supplier.nama_supplier,
            ref_pembelian_barang.jumlah,
            ref_pembelian_barang.harga_beli,
            ref_pembelian_barang.harga_jual
            ')
            ->join('ref_kategori', 'ref_kategori.id_kategori = ref_pembelian_barang.id_kategori')
            ->join('ref_supplier', 'ref_supplier.id_supplier = ref_pembelian_barang.id_supplier')
            ->get("ref_pembelian_barang")->result();

			$databind = array(
				'listPembelian' => $listPembelian
			);
            $data = array('contents' => 'Dashboard/laporan/laporan_pembelian',
						  'title'	 => 'Laporan Pembelian',
						  'linkTo'	=> 'LaporanPembelian',
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
