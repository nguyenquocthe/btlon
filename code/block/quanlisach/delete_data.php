<?php  
//select.php  
if(isset($_POST["employee_id"]))
{
 include("../config.php");
 $query = "delete FROM  sach WHERE id_sach = '".$_POST["employee_id"]."'";
 $result = mysqli_query($conn, $query);
}

?>

