<!DOCTYPE html>
<html>
<head>
	<title>nhan su</title>
	<link rel="stylesheet" type="text/css" href="../style/nhansu.css">
	 <link rel="stylesheet" type="text/css" href="../style/glyphicons-halflings-regular.woff2">
   <link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
     <script type="text/javascript" src="../style/jquery-3.3.1.js"></script>
     <script type="text/javascript" src="../style/bootstrap.min.js"></script>
     <!-- <script type="text/javascript" src="nhansu.js"></script> -->

</head>
<body style="background-color: #e6f9ff ; width: 100% ;height: 100%">
	<div>
	 <?php
 include("../home.php");
  ?>
</div>
<div>
  <?php
  include("../menu2.php");
    if(isset($_GET['thongke'])){
    	$thongke=$_GET['thongke'];
    }
    else{
    	$thongke='sosachcon';
    }
  ?>
</div>

<div class="dhtl">
	<h2>Thống Kê </h2>
</div >
<div style="width: 100%">
<div class="danhmuc">
	<h3 style="border-left: 5px solid black; padding: 5px; margin: 2px">Thống Kê Sách</h3>
    

	<?php
	
	echo"<a href='thongke.php?thongke=sosachcon' ; style='color:black;margin:25px;padding:2px '>Số Sách còn  </a> .<br>.<br>";
	
	echo"<a href='thongke.php?thongke=sosachduocmuon' ; style='color:black;margin:25px;padding:2px '>Sô Sách Được Mượn</a>  .<br>.<br>";

	echo"<a href='thongke.php?thongke=saphet' ; style='color:black;margin:25px;padding:2px '>Số sách Sắp hết</a> .<br>.<br>";

	echo"<a href='thongke.php?thongke=connhieu' ; style='color:black;margin:25px;padding:2px '>Số Sách còn Nhiều </a>";

	?>

	
</div>

<div class="noidung" id="noidung">

<br> 
<?php
include("../config.php"); 
  
?>
              
   <div id="employee_table">


     <table class="table table-bordered">
      <tr>
       <th >STT</th>  
       <th>MÃ Sách</th>
       <th >Tên Sách</th>
       <th >SL còn</th>
      </tr>
      <tbody id="myTable">
      <?php
      $stt=1;
        
         if($thongke=='sosachcon'){
        $sql="select * from sach where soluongcon>1";
       }

     elseif ($thongke=='sosachduocmuon') {
       $sql="select * from sach where id_sach in ( select id_sach from chitietphieumuon )";
     }
      elseif ($thongke=='saphet') {
       $sql="select * from sach where soluongcon  <10";
     }
     else {
      $sql="select * from sach where soluongcon>500";
     }
        $result = mysqli_query($conn, $sql);
      
      while($row = mysqli_fetch_array($result))
      {

      ?>
      <tr>
       <td><?php echo $stt ?></td>
       <td><?php echo $row['id_sach'] ?></td>
       <td><?php echo $row['tensach'] ?></td>
        <td><?php echo $row['soluongcon'] ?></td>
        
      </tr>
      <?php
      $stt++;
      }
      ?>
      </tbody>
     
     </table>
   
  
    </div>



</div>

</div>


<div id="add_data_Modal" class="modal fade">
 <div class="modal-dialog" >
  <div class="modal-content" >
   <div class="modal-header">
    <h4 >THên NHân Sự</h4>
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    
   </div>
   <div class="modal-body">
    <form method="POST" id="insert_form"  >
        <label>Mã nhân Sự</label>
     <input type="text" name="mans" id="mans" class="form-control" />
         <br />
     <label>Mã Người Dùng</label>
     <input type="text" name="nguoidung" id="nguoidung" class="form-control"></intput>

     <br />
     <label>Họ và Tên</label>
     <input type="text" name="name" id="name" class="form-control" />
     <br />
     <label>Địa Chỉ</label>
     <input type="text" name="diachi" id="diachi" class="form-control"></intput>
     <br />
     <label>NGày Sinh</label>
      <input type="date" name="ngaysinh" id="ngaysinh" class="form-control"></input>
        <br>
        <br>
      <label>Giới Tính</label>
      <input type="text" name="gioitinh" id="gioitinh" class="form-control"></input>
     <br />
     <label>SDT</label>
      <input type="te" name="sdt" id="sdt" class="form-control"></input>
     <br />
       <label>urlhinh</label>
      <input type="te" name="hinh" id="hinh" class="form-control"></input>
     
     <br />
         <label>Chúc Vụ </label>
      <input type="te" name="chucvu" id="chucu" class="form-control"></input>
     <br />
         <label>Gamil </label>
      <input type="te" name="gmail" id="gmail" class="form-control"></input>
     <br />
     <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success" />

    </form>
   </div>
   <div>
    <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right;margin-right: 20px;">Close</button>
   </div>
  </div>
 </div>
</div>
   


   <div id="dataModal_sua" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title">Sửa Thông Tin Nhân Viên</h4>
   </div>
   <div class="modal-body" id="employee_detail_sua">
    
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   </div>
  </div>
 </div>
</div>


<div id="dataModal" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title">Employee Details</h4>
   </div>
   <div class="modal-body" id="employee_detail">
    
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   </div>
  </div>
 </div>
</div>

<script type="text/javascript">


$(document).ready(function(){

 $('#insert_form').on("submit", function(event){  
  event.preventDefault();  
  
   if($('#manv').val() == "")  
  {  
   alert("Mã không đk để trống");  
  }  
  else if($('#nguoidung').val() == '')  
  {

   alert("MÃ người dùng k được trống");  
  }  
  else if($('#name').val() == '')
  {  
   alert("Tên k đk để trống");  
  }
  else if($('#diachi').val() == '')  
  {

   alert("Địa Chỉ Không đk để trống");  
  }  
  else if($('#ngaysinh').val() == '')
  {  
   alert("Ngày sinh k đk để trống");  
  }
  else if($('#gioitinh').val() == '')
  {  
   alert("Giới Tính Không đk trống");  
  }
  else if($('#sdt').val() == '')  
  {
   alert("sdt khong dk để trống");  
  }  
  else if($('#hinh').val() == '')
  {  
   alert("hinh k đk để trống ");  
  }
   else if($('#chucvu').val() == '')  
  {

   alert("Chức vụ khong dk để trống");  
  }  
  else if($('#gmail').val() == '')
  {  
   alert("gmail k đk để trống ");  
  }
  else  
  {  
   $.ajax({  
    url:"insert_nhansu.php",  
    method:"POST",  
    data:$('#insert_form').serialize(),  
    success:function(data){  
    // $('#insert_form')[0].reset();  
    $('#noidung').html(data); 
     $('#add_data_Modal').modal('hide');  
    
    
     //$('#abc').load("dssach.php") ;
     location.reload();
    } 
   
   });  
  }  
 });


  $(document).on('click', '.delete_data', function(){
  //$('#dataModal').modal();
  var employee_id = $(this).attr("id");
  $.ajax({
   url:"delete_nhansu.php",
   method:"POST",
   data:{employee_id:employee_id},
   success:function(data){
    location.reload();
   }
  });
 });

  $(document).on('click', '.update_data', function(){
  //$('#dataModal').modal();
  var employee_id = $(this).attr("id");
  $.ajax({
   url:"update_nhansu.php",
   method:"POST",
   data:{employee_id:employee_id},
   success:function(data){
    $('#employee_detail_sua').html(data);
    $('#dataModal_sua').modal('show');
   },
  
  });
 });

 $(document).on('click', '.view_data', function(){

  var employee_id = $(this).attr("id");
  $.ajax({
   url:"select_nhansu.php",
   method:"POST",
   data:{employee_id:employee_id},
   success:function(data){
    $('#employee_detail').html(data);
    $('#dataModal').modal('show');
   }
  });

 });


 
});  
</script>

</body>

</html>