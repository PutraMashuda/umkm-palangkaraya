<?php 

class Auth extends CI_Controller {

	public function login()
	{

		$this->form_validation->set_rules('username','Username','required',[
			'required' => 'Username ga boleh kosong ya']);
		$this->form_validation->set_rules('password','Password','required',[
			'required' => 'Password ga boleh kosong ya']);
		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('templates/header');
			$this->load->view('form_login');
			$this->load->view('templates/footer');
		} else {
			$auth = $this->model_auth->cek_login();

			if($auth == FALSE)
			{
				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
					  <strong>Hey!</strong> Password dan Username nyasalah njeng
					  <button type="button" class="close" data dismiss="alert" aria-label="Close">
					  <span aria-hidden="true"&times;</span>
					  </button>
					</div>');
				redirect('auth/login');
			} else {
				$this->session->set_userdata('username',$auth->username);
				$this->session->set_userdata('role_id',$auth->role_id);

				switch($auth->role_id){
					case 1 : redirect('admin/dashboard_admin');
						break;
					// case 2 : redirect('kategori/utama');
					// 	break;
					default: break;
				}

			}
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect('kategori/utama');
	}
}