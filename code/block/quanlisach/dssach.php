<div>
  <?php
 include("../home.php");
  ?>
</div>
<div>
  <?php
  include("../menu2.php");
  ?>
</div>
<?php  
include("../config.php");
// $connect = mysqli_connect("localhost", "root", "", "testing");
$sotin1trang=10;
if(isset($_GET['trang'])){
  $trang=$_GET['trang'];
}
else{
 $trang=1;
}

 ?>  
<!DOCTYPE html>  
<html>  
 <head>  
  <title>Sach</title> 
   <link rel="stylesheet" type="text/css" href="../block/style/glyphicons-halflings-regular.woff2">
 <link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
     <script type="text/javascript" src="../style/jquery-3.3.1.js"></script>
     <script type="text/javascript" src="../style/bootstrap.min.js"></script>
     <script type="text/javascript" src="sach.js"></script>
  
  </style>
 </head>  
 <body>  
  <br /><br />  
  <div class="container" style="width:100%;" id="abc">  
   
     
   <br />  
   <div class="table-responsive" >
    <div style="float: left ; margin-bottom: 10px">
      
     <button type="button" name="age" id="age" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-warning"><i class="fa fa-plus-circle" style="font-size:16px ; margin-right: 3px"></i>Add</button> 

     <input style="float: right;width: 300px; margin-left: 800px" class="form-control" id="myInput" type="text" placeholder="Search.."> 
    
    </div>
    <br />
    <div id="employee_table">
     <table class="table table-bordered">
      <tr>
       <th >STT</th>  
       <th>id_sach</th>
       <th >Tên Sách</th>
        <th >loai sach</th>  
       <th >Tác Giả</th>
        <th >Giá</th>  
        <th >Số Lượng</th>  
       <th >SL còn</th>
       <th>Thao Tac</th>
      </tr>
      <tbody id="myTable">
      <?php
      $stt=1;
        $form=($trang-1)*$sotin1trang;
       $query = "SELECT * FROM sach ORDER BY id_sach DESC LIMIT $form,$sotin1trang ";
        $result = mysqli_query($conn, $query);
      
      while($row = mysqli_fetch_array($result))
      {

      ?>
      <tr>
       <td><?php echo $stt ?></td>
       <td><?php echo $row['id_sach']; ?></td>
       <td><?php echo $row['tensach'] ?></td>
       <td><?php echo $row['id_loaisach'] ?></td>
        <td><?php echo $row['id_tacgia'] ?></td>
         <td><?php echo $row['gia'] ?></td>
           <td><?php echo $row['soluong'] ?></td>
            <td><?php echo $row['soluongcon'] ?></td>
       <td><input type="button" name="view" value="view" id="<?php echo $row["id_sach"]; ?>" class="btn btn-info btn-xs view_data" /> <input type="button" name="delete" value="delete" id="<?php echo $row["id_sach"]; ?>" class="btn btn-info btn-xs delete_data"  />
        <!-- <input type="button" name="update" value="update" id="<?php echo $row["id_sach"]; ?>" class="btn btn-info btn-xs view_data'" /> -->
        <input type="button" name="view" value="update" id="<?php echo $row["id_sach"]; ?>" class="btn btn-info btn-xs update_data" />
      
         </td>
      </tr>
      <?php
      $stt++;
      }
      ?>
      </tbody>
     
     </table>
    <div style="float: right;">
      <?php
        $sql="select * from sach";
        $kq=mysqli_query($conn,$sql);
        $tongtin=mysqli_num_rows($kq);
      
        $sotrang=ceil($tongtin/$sotin1trang);
     
        for ($i=1; $i <= $sotrang ; $i++) {       
           echo"<a href='dssach.php?trang=$i' style='background-color:blue ;color:white;margin:5px;padding:2px '>trang $i </a>";
        }
      ?>
    </div>
  
    </div>
   </div>  
  </div>
 </body>  
</html>  

<div id="add_data_Modal" class="modal fade">
 <div class="modal-dialog" >
  <div class="modal-content" >
   <div class="modal-header">
  
    <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h2 style="color: blue" >Thêm Sách</h2>
    
   </div>
   <div class="modal-body">
    <form method="post" id="insert_form">
        <label>Mã Sách</label>
     <input type="text" name="id_sach" id="id_sach" class="form-control" />
     <br />
     <label>Tên Sách</label>
     <input type="text" name="name" id="name" class="form-control" />
     <br />
     <label>id_loaisach</label>
      <select class=" form-control" name="loaisach" id="loaisach">
       <option>Chọn Mã ls...</option>
       <?php
          $sql="select *from loaisach";
          $kq=mysqli_query($conn,$sql);
          while ($row=mysqli_fetch_array($kq)) {
          ?>
          <option><?php echo $row['id_loaisach']; ?></option>
          <?php
          }
       ?>
     </select>
     <br />
     <label>id_tacgia</label>
       <select class=" form-control" name="tacgia" id="tacgia">
       <option>Chọn Mã tg...</option>
       <?php
          $sql="select *from tacgia";
          $kq=mysqli_query($conn,$sql);
          while ($row=mysqli_fetch_array($kq)) {
          ?>
          <option><?php echo $row['id_tacgia']; ?></option>
          <?php
          }
       ?>
     </select>
        <br>
        <br>
      <label>hinhanh</label>
      <input type="text" name="hinhanh" id="hinhanh" class="form-control"></input>
     <br />
     <label>Mô tả</label>
      <input type="te" name="mota" id="mota" class="form-control"></input>
     <br />
       <label>giá</label>
      <input type="number" name="gia" id="gia" class="form-control"></input>
     
     <br />
         <label>số lượng</label>
      <input type="number" name="soluong" id="soluong" class="form-control"></input>
     <br />
         <label>số lượng còn </label>
      <input type="number" name="soluongcon" id="soluongcon" class="form-control"></input>
     <br />
     <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success" />
 <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right;margin-right: 20px;">Close</button>
    </form>
   </div>
   <div>
   
   </div>
  </div>
 </div>
</div>

<div id="dataModal" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title"  style="color: blue" >CHi Tiết Sách</h4>
   </div>
   <div class="modal-body" id="employee_detail">
    
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   </div>
  </div>
 </div>
</div>


<div id="dataModal_sua" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title" style="color: blue">Sửa Thống Tin Sách</h4>
   </div>
   <div class="modal-body" id="employee_detail_sua">
    
   </div>
   <div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   </div>
  </div>
 </div>
</div> 

<!-- hahah -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <div class="modal-body">
          Modal body..
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="lod()">Close</button>
  
        </div>
        
      </div>
    </div>
  </div>

