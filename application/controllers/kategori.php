<?php
class Kategori extends CI_Controller{
	// public function elektronik()
	// {
	// 	$data['elektronik'] = $this->model_kategori->
	// 		data_elektronik()->result();
	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('elektronik',$data);
	// 	$this->load->view('templates/footer');
	// }

	// public function pakaian_pria()
	// {
	// 	$data['pakaian_pria'] = $this->model_kategori->
	// 		data_pakaian_pria()->result();
	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('pakaian_pria',$data);
	// 	$this->load->view('templates/footer');
	// }

	// public function pakaian_wanita()
	// {
	// 	$data['pakaian_wanita'] = $this->model_kategori->
	// 		data_pakaian_wanita()->result();
	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('pakaian_wanita',$data);
	// 	$this->load->view('templates/footer');
	// }

	// public function anak_anak()
	// {
	// 	$data['anak_anak'] = $this->model_kategori->
	// 		data_anak_anak()->result();
	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('anak_anak',$data);
	// 	$this->load->view('templates/footer');
	// }

	// public function olahraga()
	// {
	// 	$data['olahraga'] = $this->model_kategori->
	// 		data_olahraga()->result();
	// 	$this->load->view('templates/header');
	// 	$this->load->view('templates/sidebar');
	// 	$this->load->view('olahraga',$data);
	// 	$this->load->view('templates/footer');
	// }

	public function tentang()
	{
		$data['tentang'] = $this->model_kategori->
			data_olahraga()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('tentang',$data);
		$this->load->view('templates/footer');
	}

	public function utama()
	{
		$data['utama'] = $this->model_kategori->
			data_olahraga()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('utama',$data);
		$this->load->view('templates/footer');
	}


}