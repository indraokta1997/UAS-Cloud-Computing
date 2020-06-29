<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Artikel extends CI_Controller {
	function __construct(){
		parent::__construct();
		$this->load->model('m_artikel');

		$this->load->model('konfigurasi_model');
		$this->load->model('berita_model');
		$this->load->model('kategori_berita_model');
	}
	
	// public function index(){
	// 	$x['data']=$this->m_artikel->show_artikel();
	// 	$this->load->view('home/artikel',$x);
	// }

		// Index 
	public function index() {
		$artikel=$this->m_artikel->show_artikel();
		$site	= $this->konfigurasi_model->listing();
		// $produk	= $this->produk_model->home();
		$berita	= $this->berita_model->home();
		// $video	= $this->video_model->home();
		
		$data	= array( 'title'	=> $site['namaweb'].' | '.$site['tagline'],
						 'keywords' => $site['namaweb'].', '.$site['keywords'],
						 // 'produk'	=> $produk,
						 'artikel'	=> $artikel,
						 // 'video'	=> $video,
						 'isi'		=> 'artikellist/artikells');
		$this->load->view('layout/wrapper',$data); 
	}


	// public function tambah1() {
	// 	// $artikel=$this->m_artikel->show_artikel();
	// 	$site	= $this->konfigurasi_model->listing();
	// 	// $produk	= $this->produk_model->home();
	// 	$berita	= $this->berita_model->home();
	// 	// $video	= $this->video_model->home();
		
	// 	$data	= array( 'title'	=> $site['namaweb'].' | '.$site['tagline'],
	// 					 'keywords' => $site['namaweb'].', '.$site['keywords'],
	// 					 // 'produk'	=> $produk,
	// 					 // 'artikel'	=> $artikel,
	// 					 // 'video'	=> $video,
	// 					 'isi'		=> 'artikellist/tambah');
	// 	$this->load->view('layout/wrapper',$data); 
	// }

// Tambah
	public function tambah() {
		$kategori	= $this->kategori_berita_model->listing();
		
		// Validasi
		$v = $this->form_validation;
		
		$v->set_rules('nama_berita','Nama berita','required|is_unique[berita.nama_berita]',
			array(	'required'		=> 'Nama berita harus diisi',
					'is_unique'		=> 'Nama berita: <strong>'.$this->input->post('nama_berita').
									   '</strong> sudah ada. Buat nama yang berbeda'));
									   			
		$v->set_rules('keterangan','Keterangan berita','required',
			array(	'required'		=> 'Keterangan berita harus diisi'));
		
		if($v->run()) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '12000'; // KB	
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('gambar')) {
		// End validasi
		
		$data = array(	'title'		=> 'Tambah berita',
						'kategori'	=> $kategori,
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'artikel/tambah');
		$this->load->view('layout/wrapper', $data);
		// Masuk database
		}else{
			$upload_data				= array('uploads' =>$this->upload->data());
			// Image Editor
			$config['image_library']	= 'gd2';
			$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
			$config['new_image'] 		= './assets/upload/image/thumbs/';
			$config['create_thumb'] 	= TRUE;
			$config['quality'] 			= "100%";
			$config['maintain_ratio'] 	= TRUE;
			$config['width'] 			= 360; // Pixel
			$config['height'] 			= 200; // Pixel
			$config['x_axis'] 			= 0;
			$config['y_axis'] 			= 0;
			$config['thumb_marker'] 	= '';
			$this->load->library('image_lib', $config);
			$this->image_lib->resize();
			
			// Proses ke database
			$i = $this->input;
			$data = array(	'id_user'				=> $i->post('id_user'),
							'id_kategori_berita'	=> $i->post('id_kategori_berita'),
							'slug_berita'			=> url_title($i->post('nama_berita'),'dash',TRUE),
							'nama_berita'			=> $i->post('nama_berita'),
							'keterangan'			=> $i->post('keterangan'),
							'jenis_berita'				=> $i->post('jenis_berita'),
							'status_berita'			=> $i->post('status_berita'),
							'gambar'				=> $upload_data['uploads']['file_name'],
							'tanggal_post'			=> date('Y-m-d H:i:s')
							);
			$this->berita_model->tambah($data);
			$this->session->set_flashdata('sukses','Berita telah ditambah');
			redirect(base_url('artikel'));
		}}
		// End masuk database
		$data = array(	'title'		=> 'Tambah berita',
						'kategori'	=> $kategori,
						'isi'		=> 'artikellist/tambah');
		$this->load->view('layout/wrapper', $data);
	}


	   //  public function tambah2()
    // {
    //     // $tbl_brng = $this->barang_model;
    //     // $validation = $this->form_validation;
    //     // $validation->set_rules($tbl_brng->rules());

    //     // if ($validation->run()) {
    //     //     $tbl_brng->save();
    //     //     $this->session->set_flashdata('success', 'Berhasil disimpan');
    //     // }
    //     $this->load->view("artikellist/tambah");
    // }

    // public function edit2($id_bar = null)
    // {
    //     if (!isset($id_bar)) redirect('artikel');
       
    //     $tbl_brng = $this->barang_model;
    //     $validation = $this->form_validation;
    //     $validation->set_rules($tbl_brng->rules());

    //     if ($validation->run()) {
    //         $tbl_brng->update();
    //         $this->session->set_flashdata('success', 'Berhasil disimpan');
    //     }

    //     $data["tbl_brng"] = $tbl_brng->getById($id_bar);
    //     if (!$data["tbl_brng"]) show_404();
        
    //     $this->load->view("artikellist/edit", $data);
    // }

    // Edit
	public function edit($id_berita) {
		$berita		= $this->berita_model->detail($id_berita);
		$kategori	= $this->kategori_berita_model->listing();
		
		// Validasi
		$v = $this->form_validation;
		
		$v->set_rules('nama_berita','Nama berita','required',
			array(	'required'		=> 'Nama berita harus diisi'));
					
		$v->set_rules('keterangan','Keterangan berita','required',
			array(	'required'		=> 'Keterangan berita harus diisi'));
		
		if($v->run()) {
			if(!empty($_FILES['gambar']['name'])) {
			$config['upload_path'] 		= './assets/upload/image/';
			$config['allowed_types'] 	= 'gif|jpg|png|svg';
			$config['max_size']			= '12000'; // KB	
			$this->load->library('upload', $config);
			if(! $this->upload->do_upload('gambar')) {
		// End validasi
		
		$data = array(	'title'		=> 'Edit berita',
						'kategori'	=> $kategori,
						'berita'	=> $berita,
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'artikellist/edit');
		$this->load->view('layout/wrapper', $data);
		// Masuk database
		}else{
			$upload_data				= array('uploads' =>$this->upload->data());
			// Image Editor
			$config['image_library']	= 'gd2';
			$config['source_image'] 	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
			$config['new_image'] 		= './assets/upload/image/thumbs/';
			$config['create_thumb'] 	= TRUE;
			$config['quality'] 			= "100%";
			$config['maintain_ratio'] 	= TRUE;
			$config['width'] 			= 360; // Pixel
			$config['height'] 			= 200; // Pixel
			$config['x_axis'] 			= 0;
			$config['y_axis'] 			= 0;
			$config['thumb_marker'] 	= '';
			$this->load->library('image_lib', $config);
			$this->image_lib->resize();
			
			// Proses ke database
			$i = $this->input;
			$data = array(	'id_berita'				=> $id_berita,
							// 'id_user'				=> $this->session->userdata('id'),
							'id_kategori_berita'	=> $i->post('id_kategori_berita'),
							'slug_berita'			=> url_title($i->post('nama_berita'),'dash',TRUE),
							'nama_berita'			=> $i->post('nama_berita'),
							'keterangan'			=> $i->post('keterangan'),
							'jenis_berita'				=> $i->post('jenis_berita'),
							'status_berita'			=> $i->post('status_berita'),
							'gambar'				=> $upload_data['uploads']['file_name']
							);
			$this->berita_model->edit($data);
			$this->session->set_flashdata('sukses','Berita telah diedit');
			redirect(base_url('artikel'));
		}}else{
			// Proses ke database
			$i = $this->input;
			$data = array(	'id_berita'				=> $id_berita,
							// 'id_user'				=> $this->session->userdata('id'),
							'id_kategori_berita'	=> $i->post('id_kategori_berita'),
							'slug_berita'			=> url_title($i->post('nama_berita'),'dash',TRUE),
							'nama_berita'			=> $i->post('nama_berita'),
							'keterangan'			=> $i->post('keterangan'),
							'jenis_berita'				=> $i->post('jenis_berita'),
							'status_berita'			=> $i->post('status_berita')									
							);
			$this->berita_model->edit($data);
			$this->session->set_flashdata('sukses','Berita telah diedit');
			redirect(base_url('artikel'));
		}}
		// End masuk database
		$data = array(	'title'		=> 'Edit berita',
						'kategori'	=> $kategori,
						'berita'	=> $berita,
						'isi'		=> 'artikellist/edit'); 
		$this->load->view('layout/wrapper', $data);
	}

    // public function delar($id_bar=null)
    // {
    //     if (!isset($id_bar)) show_404();
        
    //     if ($this->barang_model->delete($id_bar)) {
    //         redirect(site_url('artikel'));
    //     }
    // }

    // Delete
	// public function delete1($id_berita) {
	// 	// $this->simple_login->cek_login();
	// 	$data = array('id_berita'	=> $id_berita);
	// 	$this->berita_model->delete($data);
	// 	$this->session->set_flashdata('sukses','Data telah didelete');
	// 	redirect(base_url('artikel'));		
	// }

	// public function delete($id_berita)
 //    {
 //        if (!isset($id_berita)) show_404();
        
 //        if ($this->m_artikel->hapus($id_berita)) {
 //            redirect(site_url('artikel'));
 //        }
 //    }

    public function hapus($id_berita){
    $this->m_artikel->delete2($id_berita); // Panggil fungsi delete() yang ada di SiswaModel.php
    redirect('artikel');
  }
}
