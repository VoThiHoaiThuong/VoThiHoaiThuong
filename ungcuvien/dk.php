 <?php
 if (isset($_SESSION['email'])){
  unset($_SESSION['email']);
  }
 
 
 ?>
 
 <div id="title">
          <nav class="navbar navbar-expand-lg ">
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="navbarnav" id="navbarNav">
                <h2>Đăng ký</h2><br>
                <h6><a href="index.php">Trang chủ</a> / Đăng ký</h6>
               
              </div>
            </nav>
      </div>

<div id="main">
    
    <div class="maincontent1">
    
<span style="font-size: 24px; color:blue; padding: 0px 40px;">Đăng ký thành viên</span>
<style type="text/css">
	table.dangky tr td {
	    padding: 10px ;
		
		
	}
   form
   {
     padding: 50px 450px ;	
   }
   .nav-item2 {
	/* margin-top: 5px; */
    padding-left:60px;
	
   }

</style>



<form action="" method="POST">
<table class="dangky" border="5" style="border-collapse: collapse;">
	
	
   <!-- Pills navs -->
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">

<li class="nav-item2" role="presentation">
    <a
      class="nav-link active "
      id="tab-login"
      data-mdb-toggle="pill"
      href="index.php?quanly=dk"
      role="tab"
      aria-controls="pills-login"
      aria-selected="true"
      >Đăng ký ứng viên </a
    >
  </li>
 

<li class="nav-item2" role="presentation">
    <a
      class="nav-link "
      id="tab-register"
      data-mdb-toggle="pill"
      href="index.php?quanly=dkntd"
      role="tab"
      aria-controls="pills-register"
      aria-selected="false"
      >Đăng ký nhà tuyển dụng</a
    >
  </li>


</ul>
	
      <div class="text-center mb-3">
        <h5   style=" margin-bottom: 20px;">Sign in with:</h5>
        <a href="http://fb.com/"><button type="button" class="btn btn-primary btn-floating mx-1">
       <i class="fab fa-facebook-f "></i>
        </button>
		</a>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-google"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-twitter"></i>
        </button>

        <button type="button" class="btn btn-primary btn-floating mx-1">
          <i class="fab fa-github"></i>
        </button>

		<h5  style=" margin-top: 20px;" > Or:</h5>
</div>
	<!-- <tr>

		<a href="index.php?quanly=dangky" style="font-size: 20px;">Đăng ký ứng viên</a>//
		<a href="index.php?quanly=dangky" style="font-size: 20px;">Đăng ký nhà tuyển dụng</a>
	</tr>   	  -->

	<tr>
		<td style="font-size:20px; ">Tên</td>
		<td><input type="text" size="50" name="tenungvien" class="form-control"></td>
	</tr>
	<tr>
		<td style="font-size:20px;"><span>Email</span></td>
		<td><input type="text" size="50" name="email" class="form-control"></td>
	</tr>
    <tr>
		<td style="font-size:20px;"><span>Mật khẩu</span></td>
		<td><input type="text" size="50" name="matkhau" class="form-control"></td>
	</tr>
  
	<tr>
		<td><input style="font-size: 20px;" type="submit" name="dk" value="Đăng ký" class="btn btn-primary btn-block" ></td>
		<td><a href="http://localhost:8080/web_vieclam/ungcuvien/login.php" style="font-size: 20px;"> Đăng nhập nếu có tài khoản </a></td> 
	</tr>
</table>

</form>

<?php
	// session_start();
	if(isset($_POST['dk'])) {
		$tenungvien = $_POST['tenungvien'];
		$email = $_POST['email'];
		$matkhau = ($_POST['matkhau']);
		$sql_dangky ="INSERT INTO dangky(tenungvien,email,matkhau) VALUE('".$tenungvien."','".$email."','".$matkhau."')";
    $result= mysqli_query($mysqli,$sql_dangky) ;
    $sql_dangky ="INSERT INTO dangky(tenungvien,email,matkhau) VALUE('".$tenungvien."','".$email."','".$matkhau."')";
    $result= mysqli_query($mysqli,$sql_dangky) ;
    $matkhau = md5($matkhau);
  
    if (!$tenungvien || !$matkhau || !$email ) {
			echo "Vui lòng nhập đầy đủ thông tin. <a href='javascript: history.go(-1)'>Trở lại</a>";
        exit;
		}
   
    else{
			
      echo "<h5 style='color:green; right:50px;'>Bạn đã đăng ký thành công <a href='index.php'>Về trang chủ</a></h5>";
		}
	}
?>



    </div>
</div>


