<?php
require 'koneksi.php';
hapus($_GET['id']);
header("location: admin.php");
function hapus($id)
{
    global $koneksi;
    mysqli_query($koneksi, "DELETE FROM ttamu WHERE id = $id");
    return mysqli_affected_rows($koneksi);
}
