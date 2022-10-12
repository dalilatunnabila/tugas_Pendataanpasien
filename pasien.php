<?php
include("koneksi.php");?>

<html>
<head>
</head>
<body>
<h1>Data Pasien Rumah Sakit</h1>
<h4> <a href=index.php>Ke Halaman Utama</a></h4>
<table border="1">
    <tr>
        <th>id</th>
        <th>Nama Lengkap</th>
        <th>Alamat</th>
        <th>Jenis Kelamin</th>
        <th>NO.Telp</th>
        <th>Agama</th>
        <th>Tanggal Masuk</th>
        <th>Gejala</th>
        <th>Tempat Lahir</th>
        <th>Tanggal Lahir</th>
        <th>NO.Kamar</th>
</tr>

<?php
    include("koneksi.php");
    $sql='SELECT * FROM tb_pasien';
    $query = mysqli_query($koneksi,$sql);

    while($pasien=mysqli_fetch_array($query)){
    echo "<tr>";
               echo "<td>".$pasien['id']."</td>";
               echo "<td>".$pasien['nama_lengkap']."</td>";
               echo "<td>".$pasien['alamat']."</td>";
               echo "<td>".$pasien['jk']."</td>";
               echo "<td>".$pasien['no_telp']."</td>";
               echo "<td>".$pasien['agama']."</td>";
               echo "<td>".$pasien['tanggal_masuk']."</td>";
               echo "<td>".$pasien['gejala']."</td>";
               echo "<td>".$pasien['tempat_lahir']."</td>";
               echo "<td>".$pasien['tanggal_lahir']."</td>";
               echo "<td>".$pasien['no_kamar']."</td>";  
               echo "</tr>";

    }
?>
</table>
</body>
</html>