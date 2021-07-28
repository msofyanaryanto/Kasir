<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class StokBarang extends CI_Controller{
 
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
			$data = array('contents' => 'Dashboard/stokBarang/index',
						  'title'	 => 'Data Stok Barang',
						  'linkTo'	=> 'stokBarang',
						  'data' 	=> $query,
							);
				$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

    function edit($id){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$query = $this->db->query("select * from ref_barang where id_barang = '$id'")->row();
			$kategori = $this->db->get("ref_kategori")->result();
			$data = array('contents' => 'Dashboard/stokBarang/edit',
						  'title'	 => 'Stok Barang',
						  'linkTo'	=> 'stokBarang',
						  'data' 	=> $query,
                          'kategori' => $kategori,
							);
				$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

    public function update_action($id){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$stokMinimal = addslashes($this->input->post('stokMinimal'));
			$key = array(
			'id_barang' => $id,
			);
			$data = array(
				'stok_minimal' => $stokMinimal,
				);
			$this->db->update('ref_barang',$data,$key);
			

			//notif
			$this->session->set_flashdata("notif","<div class=\"alert alert-alt alert-success alert-dismissible\" role=\"alert\">
					  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">
					   <span aria-hidden=\"true\">&times;</span>
					  </button><a class=\"alert-link\" href=\"javascript:void(0)\">
					  <i class=\"icon wb-bell\" aria-hidden=\"true\"></i>
					  Data Berhasil di update.</a>.
					</div>
					");
			redirect('stokBarang');
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

}
?>
