<html>

<head>
    <title>Data Pengunjung</title>
</head>

<body>
    <h2>Edit Input Data Pengunjung</h2>
    <hr>

    <?php
    include "koneksi.php";
    $id = $_GET['id'];
    $tampil = mysqli_query($koneksi, "SELECT * FROM ttamu where id='$id'");
    $data = mysqli_fetch_array($tampil);
    // var_dump($data);
    // die;

    ?>

    <form action="edit.php?id=<?= $id ?>" method="POST">
        <table>
            <tr>
                <td>Nama</td>
                <td>:</td>
                <td><input type="text" name="nama" value="<?php echo $data['nama']; ?>"></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>:</td>
                <td><input type="text" name="alamat" value="<?php echo $data['alamat']; ?>"></td>
            </tr>
            <tr>
                <td>Tujuan</td>
                <td>:</td>
                <td><input type="text" name="tujuan" value="<?php echo $data['tujuan']; ?>"></td>
            </tr>
            <tr>
                <td>Nope</td>
                <td>:</td>
                <td><input type="text" name="nope" value="<?php echo $data['nope']; ?>"></td>
            </tr>
            <button type="submit" name="bsimpan" class="btn btn-primary btn-user btn-block">Simpan Data</button>
        </table>
    </form>





</body>

</html>