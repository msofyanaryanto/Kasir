<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori  extends CI_Controller{
 
	function __construct(){
		parent::__construct();		
		$this->load->model('model_user','karyawan');
	}

	
	function index(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$query = $this->db->get("ref_kategori")->result();
			$data = array('contents' => 'Dashboard/kategori/index',
						  'title'	 => 'Kategori',
						  'data' 	=> $query
							);
				$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

	public function add(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
				$data = array('contents' => 'Dashboard/Users/add',
							   'select_group' => $this->karyawan->select_group()->result(),
							   'title'		 => "User"		
							);
				$this->load->view('Layouts/warper', $data);
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

	public function add_action(){
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$id_group = addslashes($this->input->post('id_group'));
				$gaji = str_replace('.','',addslashes($this->input->post('gaji')));
				$name_user = addslashes($this->input->post('name_user'));
				$username = addslashes($this->input->post('username'));
				$password = addslashes(md5(md5($this->input->post('password'))));
				$created_at = addslashes(date("Y-m-d\TH:i:s.u"));
		 
				$data = array(
					'id_group' => $id_group,
					'gaji' => $gaji,
					'name_user' => $name_user,
					'username' => $username,
					'password' => $password,
					'created_at' => $created_at
					);
				$this->db->insert('ref_user',$data);

				redirect('user');
			
		}else{
			session_destroy();
			redirect('dashboard');
		}
	}

 
}
?>
