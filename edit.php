<?php
require 'koneksi.php';
edit($_GET['id']);
header("location: admin.php");

function edit($id)
{
	global $koneksi;
	$tanggal = date('Y-m-d');

	// htmlspecialchars agar inputan lebih aman dari injection
	$nama = htmlspecialchars($_POST['nama'], ENT_QUOTES);
	$alamat = htmlspecialchars($_POST['alamat'], ENT_QUOTES);
	$tujuan = htmlspecialchars($_POST['tujuan'], ENT_QUOTES);
	$nope = htmlspecialchars($_POST['nope'], ENT_QUOTES);

	$query = "UPDATE ttamu SET
				tanggal = '$tanggal',
				nama = '$nama',
				alamat = '$alamat',
				tujuan = '$tujuan',
				nope = '$nope'
			  WHERE id = '$id'
			";

	mysqli_query($koneksi, $query);

	return mysqli_affected_rows($koneksi);
}
