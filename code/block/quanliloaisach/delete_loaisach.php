<?php  
//select.php  
if(isset($_POST["employee_id"]))
{
 include("../config.php");
 $query = "delete FROM  loaisach WHERE id_loaisach = '".$_POST["employee_id"]."'";
 $result = mysqli_query($conn, $query);
}

?>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <script type="text/javascript">
        <?php 
    if($result){
        ?>
        alert("xóa thanh cong");
     <?php   
      }
     ?>
    </script>
    

</body>
</html>

