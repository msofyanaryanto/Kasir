<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
        {
                parent::__construct();
                $this->load->model('model_menu');
        }


	
	public function index() {
		
		if($this->session->userdata('name_user') and $this->session->userdata('username')){
			$data = array('contents' => 'Layouts/home'
							);
			$this->load->view('Layouts/warper',$data);
		}else{
			$this->load->view('Layouts/Login');	
		}

	}

	

	public function get_login() {

		$username = addslashes($this->input->post('username'));
		$password = addslashes($this->input->post('password'));
		$passMD5 = md5(md5($password));

		$query_data = $this->db->get_where('ref_user', array('username' => $username, 'password' => $passMD5));


		if($query_data->num_rows() > 0){
			$name_user = $query_data->row()->name_user;
			$username = $query_data->row()->username;
			$id_group = $query_data->row()->id_group;
			
			// insert ke history
			$this->session->set_userdata('name_user',$name_user);
			$this->session->set_userdata('username',$username);
			$this->session->set_userdata('id_group',$id_group);
			$query_user_access = $this->db->get_where('ref_user_access', array('id_group' => $id_group))->result();
			/*$data_user_access = array($query_user_access);*/
			$this->session->set_userdata('data_user_access',$query_user_access);

			$this->db->select('*');
			$this->db->from('ref_module');
			$this->db->join('ref_user_access', 'ref_user_access.id_module = ref_module.id_module');
			$this->db->where('id_group',$id_group);
			$this->db->order_by("sort", "asc");
			$query_menu = $this->db->get()->result();

			$this->session->set_userdata('query_menu',$query_menu);
			
			$data_contents = array('contents' => 'test');

			redirect('dashboard','refresh');;
		}else{
			redirect('dashboard');
		}


	}

	public function get_menu(){
		/*$data = array('listMenu' => $this->model_menu->list_menu());
		print_r($data);
		exit();*/
		/*$this->load->view('test');*/
		/*$parent = "0";
		$hasil = "";
		echo $this->model_menu->menu($parent,$hasil);*/
		$array = $this->db->query("SELECT * from ref_module")->result();
		$parent_id = "0";
		$parents = array();
		echo $this->model_menu->bootstrap_menu($array,$parent_id,$parents);
		exit();


	}

	public function get_data(){
		print_r($this->session->userdata('query_menu'));
		exit();


	}

	public function get_logout() {
		 $this->session->sess_destroy();
		 $this->session->unset_userdata('query_menu',$query_menu);
		 redirect('dashboard');
	} 

	public function get_android() {
		 $this->session->sess_destroy();
		 $this->session->unset_userdata('query_menu',$query_menu);
		 redirect('dashboard');
	}

	
	
}