<?php
    $connect=mysqli_connect('localhost','root','','prediksi');
    $ambil=$connect->query("SELECT * FROM barang");
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sistem Prediksi</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">APLIKASI</a>
            </div>

            <div class="header-right">
                <div class="inner-text">
                    Selamat Datang Admin :)<br />
                Aplikasi Prediksi Penjualan</div>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/sarjana.png" class="img-thumbnail" />

                            <div class="inner-text">
                                Selamat Datang
                            <br />
                                <small>Muhammad Hisbullah Al-Faiqoh </small>
                            </div>
                        </div>
                    </li>
                    <li><a href="dasboard.php"><i class="fa fa-dashboard "></i>Home</a></li>
                    <li><a href="admin.php"><i class="fa fa-desktop "></i>Admin</a></li>
                    <li><a class="active-menu" href="barang.php"><i class="fa fa-edit "></i>Data Barang </a></li>
                    <li><a href="penjualan.php"><i class="fa fa-bars "></i>Data Penjualan </a></li>
                    <li><a href="prediksi.php"><i class="fa fa-flask "></i>Prediksi</a></li>
                    <li><a href="logout.php"><i class="fa fa-sign-out "></i>Log Out</a></li>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
               <h3><span class="glyphicon glyphicon-briefcase"></span>  Data Barang</h3>
            <a href="tambahbarang.php" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span> Tambah Barang</a>
            <br/>
            <br/>

                <table class="table table-bordered">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>ID Barang</th>
                    <th>Nama Barang</th>
                    <th>Harga</th>
                    <th>Opsi</th>
                  </tr>
                </thead>
                <tbody>
                    <?php $nomor=1; ?>
                    <?php while($pecah=mysqli_fetch_array($ambil)) :?>
                  <tr>
                    <td><?php echo $nomor++ ?></td>
                    <td><?php echo $pecah['id_barang']; ?></td>
                    <td><?php echo $pecah['nama_barang']; ?></td>
                    <td><?php echo $pecah['harga_barang']; ?></td>
                    <td>
                        <a href="ubahbarang.php?id=<?php echo $pecah['id_barang']; ?>" class="btn btn-warning">Ubah</a>
                        <a href="hapusbarang.php?id=<?php echo $pecah['id_barang']; ?>" class="btn btn-danger">Hapus</a>
                    </td>
                  </tr>
                <?php endwhile ?>
                </tbody>
              </table>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
</body>
</html>