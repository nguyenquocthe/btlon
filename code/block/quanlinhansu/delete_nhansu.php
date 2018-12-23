<?php
include("../config.php");
$id=$_POST['employee_id'];
$sql="delete from phieumuon where manv='$id'";
$kq=mysqli_query($conn,$sql);
$sql2="delete from nhanvien where manv='$id'";
$kq2=mysqli_query($conn,$sql2);
?>