// $(document).ready(function (){
//   $("#insert_form").on('submit',function(event){
//   	event.preventDefault();
//   if($('#mans').val() == "")  
//   {  
//    alert("Mã không đk để trống");  
//   }  
//   else if($('#nguoidung').val() == '')  
//   {

//    alert("MÃ người dùng k được trống");  
//   }  
//   else if($('#name').val() == '')
//   {  
//    alert("Tên k đk để trống");  
//   }
//   else if($('#diachi').val() == '')  
//   {

//    alert("Địa Chỉ Không đk để trống");  
//   }  
//   else if($('#ngaysinh').val() == '')
//   {  
//    alert("Ngày sinh k đk để trống");  
//   }
//   else if($('#gioitinh').val() == '')
//   {  
//    alert("Giới Tính Không đk trống");  
//   }
//   else if($('#sdt').val() == '')  
//   {

//    alert("sdt khong dk để trống");  
//   }  
//   else if($('#hinh').val() == '')
//   {  
//    alert("hinh k đk để trống ");  
//   }
//    else if($('#chucvu').val() == '')  
//   {

//    alert("Chức vụ khong dk để trống");  
//   }  
//   else if($('#gmail').val() == '')
//   {  
//    alert("gmail k đk để trống ");  
//   }
//   else 
//   {
//   	$.ajax({
//   		url:"insert_nhansu.php",
//   		method:"POST",
//   		data:$("#insert_form").serialize(),
//   		success:function(data){
//   		 $('#add_data_Modal').modal('hide');
//   		 $('#nguoidung').html(data);
//   		 location.reload();
//   		}
//   	});

//   };
//   })	
// })