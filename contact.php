<?php include "header.php"; ?>
<br><style> .jumbotron{color: rgb(0, 0, 0); } </style>
			<div class="jumbotron" style="background-color: rgb(203, 167, 167);"></style>
		
		<!-- Awal Page -->
		<div class="container">
		<!-- Awal baris -->
		<div class="row">
			<div class="col-md-8"><!-- Awal Kolom Pertama -->
			<div class="panel panel-default">
				<div class="panel-body">
				<h2 style="text-muted"><span class="glyphicon glyphicon-list"></span> CONTACT US</h2>
				<?php 

					if(@$_GET['pesan']=="inputBerhasil"){

					?>
									<div class="alert alert-success">
									Terima kasih, pesan anda sudah terkirim!
									</div>
					<?php

					}

					?>
					<form action="proses-komentar.php" method="post">
						<table class="table table-hover">
							<tr>
								<td>nama
								<input type="text" name="nama" class="form-control input-md" placeholder="Isikan nama anda dengan lengkap" required>
								</td>
							</tr>
							<tr>
								<td>email
								<input type="email" name="email" class="form-control input-md" placeholder="Isikan alamat email yang masih aktif" required>
								</td>
							</tr>
							<tr>
								<td>no_handphone
								<input type="text" name="no_handphone" class="form-control input-md" placeholder="Isikan nomor hp yang masih aktif" required>
								</td>
							</tr>
							<tr>
								<td>Pesan
								<input name="pesan" class="form-control input-md"placeholder="Isikan kritik dan saran anda " required>
								</td>
							</tr>
							<tr>
								<td>
								<input type="submit" value="Kirim" class="btn btn-lg btn-info"> <input type="reset" value="Batal" class="btn btn-lg btn-warning">
								</td>
							</tr>
						</table>
					</form>
				</div>
      </div>
			</div><!-- Akhir Kolom Pertama -->
			
			<div class="col-md-4"><!-- Awal kolom kedua -->
			<div class="panel panel-default">
				<div class="panel-body">
				<h2 style="text-muted"><span class="glyphicon glyphicon-tasks"></span> SHOP OWNER</h2>
				<h4>Nur Hasanah</h4>
				<img src="images/me.jpeg" class="img-thumbnail img-responsive">
				<p><h5>Shop Owner beralamatkan di desa kota datar di dusun VII waringin Owner lahir pada tanggal 04 januari 2004.</h5><a class="btn btn-danger btn-xs" href="ruang_kelas.html"role="button">Info Owner</a></p>
				</div>
      </div>
			</div><!-- Akhir Kolom Kedua -->
		</div><!-- Akhir Baris -->
		</div><!--  Akhir Page -->
				</div>
				<br>
				<br>
<?php include "footer.php"; ?>