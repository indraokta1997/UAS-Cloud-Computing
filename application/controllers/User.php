<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	
	// Load database
	public function __construct(){
		parent::__construct();
		$this->load->model('konfigurasi_model');
		// $this->load->model('produk_model');
		$this->load->model('berita_model');
		// $this->load->model('video_model');
	}
	
	// Index 
	public function index() {
		$site	= $this->konfigurasi_model->listing();
		// $produk	= $this->produk_model->home();
		$berita	= $this->berita_model->home();
		// $video	= $this->video_model->home();
		
		$data	= array( 'title'	=> $site['namaweb'].' | '.$site['tagline'],
						 'keywords' => $site['namaweb'].', '.$site['keywords'],
						 // 'produk'	=> $produk,
						 'berita'	=> $berita,
						 // 'video'	=> $video,
						 'isi'		=> 'user/list');
		$this->load->view('user/layout/wrapper',$data); 
	}

	// Read
	public function read($slug_berita) {
		$site	= $this->konfigurasi_model->listing();
		$berita	= $this->berita_model->home();
		$read	= $this->berita_model->read($slug_berita);
		
		$data	= array( 'title'	=> $read->nama_berita,
						 'keywords' => $read->nama_berita,
						 'berita'	=> $berita,
						 'read'		=> $read,
						 'isi'		=> 'artikellist/read');
		$this->load->view('user/layout/wrapper',$data); 
	}
}
		