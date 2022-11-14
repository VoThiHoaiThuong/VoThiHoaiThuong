<?php
	if(isset($_POST['doimatkhau'])){
		$email = $_POST['email'];
		$matkhau_cu = md5($_POST['password_cu']);
		$matkhau_moi = md5($_POST['password_moi']);
		$sql = "SELECT * FROM dknhatuyendung WHERE email='".$email."' AND matkhau='".$matkhau_cu."' LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);
		if($count>0){
			$sql_update = mysqli_query($mysqli,"UPDATE dknhatuyendung SET matkhau='".$matkhau_moi."'");
			echo '<p style="color:green">Mật khẩu đã được thay đổi."</p>';
		}else{
			echo '<p style="color:red">Tài khoản hoặc Mật khẩu cũ không đúng,vui lòng nhập lại."</p>';
		}
	}
?>
<div id="title">
          <nav class="navbar navbar-expand-lg ">
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="navbarnav" id="navbarNav">
                <h2>Đổi mật khẩu</h2><br>
                <h6><a href="index.php">Trang chủ</a> / Đổi mật khẩu</h6>
              </div>
            </nav>
      </div>

<div id="main">
    
    <div class="maincontent1">
    
<span style="font-size: 24px; color:blue; padding: 0px 40px;">Đổi mật khẩu</span>
<style type="text/css">
	table.thaydoimkntd tr td {
	    padding: 10px ;
		
		
	}
   form
   {
     padding: 80px 450px ;	
   }
   .nav-item6 {
	/* margin-top: 5px; */
    padding-left:60px;
    padding-bottom:40px ;
	
   }

</style>



<form action="" method="POST">
<table class="thaydoimkntd" border="5" style="border-collapse: collapse;">
	
	
   <!-- Pills navs -->
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">

<li class="nav-item6" role="presentation">
    <a
      class="nav-link active "
      id="tab-login"
      data-mdb-toggle="pill"
      href="index.php?quanly=thaydoimk"
      role="tab"
      aria-controls="pills-login"
      aria-selected="false"
      >Đổi mk ứng viên </a
    >
  </li>
 

<li class="nav-item6" role="presentation">
    <a
      class="nav-link "
      id="tab-register"
      data-mdb-toggle="pill"
      href="index.php?quanly=thaydoimkntd"
      role="tab"
      aria-controls="pills-register"
      aria-selected="true"
      >Đổi mk nhà tuyển dụng</a
    >
  </li>


</ul>

    <tr>
		<td style="font-size:20px; ">Email</td>
		<td><input type="text" size="50" name="email" class="form-control"></td>
	</tr>
	<tr>
		<td style="font-size:20px;"><span>Mật khẩu cũ</span></td>
		<td><input type="text" size="50" name="password_cu" class="form-control"></td>
	</tr>
    <tr>
		<td style="font-size:20px;"><span>Mật khẩu mới</span></td>
		<td><input type="text" size="50" name="password_moi" class="form-control"></td>
	</tr>
  <tr>
  <td >
        <input style="font-size: 20px;" type="submit" name="thaydoimkntd" value="Đổi mật khẩu" class="btn btn-primary btn-block">			
	</td>
    <td><a href="index.php" style="text-decoration: none;font-size: 20px;">Trang chủ</a></td>

  </tr>
   
	
</table>

</form>


    </div>
</div>





