<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanTransaksi  extends CI_Controller{
 
	function __construct(){
		parent::__construct();	
		$this->load->helper('rupiah_helper');
	}

	
	function index(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$listTransaksi = $this->db->get("tr_transaksi")->result();
			foreach($listTransaksi as $index => $transaksi){
				$detailTransaksi = $this->db
				->select('ref_barang.nama_barang')
				->join('ref_barang', 'ref_barang.kode_barang = tr_detail_transaksi.barangId')
				->get("tr_detail_transaksi")
				->result();

				$listbarang = [];
				foreach($detailTransaksi as $detailTransaksiVal){
					array_push($listbarang,$detailTransaksiVal->nama_barang);
				}

				$listTransaksi[$index]->list_barang = implode(",",$listbarang);
			}
			$totalPendapatan = $this->db->select_sum('total')->get("tr_transaksi")->row();
			
			$databind = array(
				'totalPendapatan' => $totalPendapatan->total,
				'listTransaksi' => $listTransaksi
			);
            $data = array('contents' => 'Dashboard/laporan/laporan_transaksi',
						  'title'	 => 'Laporan Transaksi',
						  'linkTo'	=> 'laporanTransaksi',
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
