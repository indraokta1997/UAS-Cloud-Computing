<?php
class M_artikel extends CI_Model{
	
	function show_artikel(){
		$hasil=$this->db->query("SELECT * FROM berita");
		return $hasil;
	}

	// Tambah
	public function tambah ($data) {
		$this->db->insert('berita',$data);
	}

// Edit 
	public function edit ($data) {
		$this->db->where('id_berita',$data['id_berita']);
		$this->db->update('berita',$data);
	}


// public function hapus($id_berita)
//     {
//         return $this->db->delete('berita',$id_berita);
//     }

// 	// Delete
// 	public function delete ($data){
// 		$this->db->where('id_berita',$data['id_berita']);
// 		$this->db->delete('berita',$data);
// 	}

	public function delete2($id_berita){
    $this->db->where('id_berita', $id_berita);
    $this->db->delete('berita'); // Untuk mengeksekusi perintah delete data
  }
	
}