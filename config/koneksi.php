<?php
$conn = mysqli_connect("db", "root", "root", "dbpos_koperasi");

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>