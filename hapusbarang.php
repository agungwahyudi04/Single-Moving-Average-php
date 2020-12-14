<?php
    
$connect = mysqli_connect("localhost", "root", "", "prediksi");
$id=$_GET['id'];
$ambil=mysqli_query($connect,"DELETE FROM barang WHERE id_barang='$id' ");
if ($ambil) {
	echo "
	<script>
    alert('Data Berhasil Dihapus')
    document.location.href='barang.php'
    </script>
	";
 //redirect('master/sd.php');
} else {
   echo "
    <script>
    alert('Data Gagal Dihapus')
    </script>
    ";

}
?>