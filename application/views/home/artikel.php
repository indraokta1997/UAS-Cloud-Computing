<!DOCTYPE html>
<html lang="id">
<head>
	<meta charset="utf-8">
	<title>List Artikel</title>
	<link href="<?php echo base_url().'assets/css/bootstrap.css'?>" rel="stylesheet">
    <link href="<?php echo base_url().'assets/css/jquery.dataTables.min.css'?>" rel="stylesheet">
</head>
<body>

<div class="container">
	<h1>List<small>Artikel!</small></h1>
	<table class="table table-bordered table-striped" id="mydata">
		<thead>
			<tr>
				<td>ID Artikel</td>
				<td>Kategori</td>
				<td>Judul Artikel</td>
				<td>Status</td>
				<td>Tanggal Post</td>
			</tr>
		</thead>
		<tbody>
			<?php 
				foreach($data->result_array() as $i):
					$id_berita=$i['id_berita'];
					$id_kategori_berita=$i['id_kategori_berita'];
					$nama_berita=$i['nama_berita'];
					$status_berita=$i['status_berita'];
					$tanggal_post=$i['tanggal_post'];
			?>
			<tr>
				<td><?php echo $id_berita;?></td>
				<td><?php echo $id_kategori_berita;?></td>
				<td><?php echo $nama_berita;?></td>
				<td><?php echo $status_berita;?></td>
				<td><?php echo $tanggal_post;?></td>
			</tr>
			<?php endforeach;?>
		</tbody>
	</table>
	
</div>

<script src="<?php echo base_url().'assets/js/jquery-2.2.4.min.js'?>"></script>
<script src="<?php echo base_url().'assets/js/bootstrap.js'?>"></script>
<script src="<?php echo base_url().'assets/js/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'assets/js/moment.js'?>"></script>
<script>
	$(document).ready(function(){
		$('#mydata').DataTable();
	});
</script>
</body>
</html>