<!-- news -->
<div class="news-info">
<div class="container">		
<h3 class="title">List Artikel</h3>
</div>
</div>

 <div class="container">
 	<br>
		<a href="<?php echo base_url('logintbh') ?>" class="btn btn-primary">
		<i class="fa fa-plus"></i> Tambah Berita</a>
	<br><br>
	<table class="table table-bordered table-striped" id="mydata">
		<thead>
			<tr>
				<td>ID Artikel</td>
				<td>Kategori</td>
				<td>Judul Artikel</td>
				<td>Status</td>
				<td>Tanggal Post</td>
				<td>Aksi</td>
			</tr>
		</thead>
		<tbody>
			<?php 
				foreach($artikel->result_array() as $i):
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
				<td width="200">

				<!-- 	<a href="<?php echo base_url('login') ?>"class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></a> -->
				<!-- <a href="<?php echo base_url('artikel/edit') ?>">Edit</a><i class="fas fa-edit"></i> -->

				<a href="<?php echo base_url('artikel/edit/'.$id_berita) ?>"class="btn btn-primary btn-sm"><i class="fa fa-edit"></i>Edit</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

				<a href="<?php echo base_url('artikel/hapus/'.$id_berita) ?>" class="btn btn-primary btn-sm">Hapus</a>	
											<!-- <a href="<?php echo site_url('artikel/edit/'.$tbl_brng->id_bar) ?>"
											 class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
											<a onclick="deleteConfirm('<?php echo site_url('artikel/hapus/'.$tbl_brng->id_bar) ?>')"
											 href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a> -->
				<!-- <?php include('delete.php') ?> -->						
										</td>
									</tr>
			</tr>
			<?php endforeach;?>
		</tbody>
	</table>
	
</div>


<!-- //news -->