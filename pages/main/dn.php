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
                <h2>Đăng nhập</h2><br>
                <h6><a href="index.php">Trang chủ</a> / Đăng nhập ứng viên</h6>
              </div>
            </nav>
      </div>

<div id="main">
    
    <div class="maincontent1">
    
<span style="font-size: 24px; color:blue; padding: 0px 40px;">Đăng nhập thành viên</span>
<style type="text/css">
	table.dangnhap tr td {
	    padding: 10px ;
		
		
	}
   form
   {
     padding: 50px 450px ;	
   }
   .nav-item3 {
	/* margin-top: 5px; */
    padding-left:60px;
	
   }

</style>



<form action="" method="POST">
<table class="dangnhap" border="5" style="border-collapse: collapse;">
	
	
   <!-- Pills navs -->
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">

<li class="nav-item3" role="presentation">
    <a
      class="nav-link active "
      id="tab-login"
      data-mdb-toggle="pill"
      href="index.php?quanly=dangnhap"
      role="tab"
      aria-controls="pills-login"
      aria-selected="true"
      >Đăng nhập ứng viên </a
    >
  </li>
 

<li class="nav-item3" role="presentation">
    <a
      class="nav-link "
      id="tab-register"
      data-mdb-toggle="pill"
      href="index.php?quanly=dangnhapntd"
      role="tab"
      aria-controls="pills-register"
      aria-selected="false"
      >Đăng nhập nhà tuyển dụng</a
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
	

	<tr>
		<td style="font-size:20px;"><span>Email</span></td>
		<td><input type="text" size="50" name="email" class="form-control"></td>
	</tr>
    <tr>
		<td style="font-size:20px;"><span>Mật khẩu</span></td>
		<td><input type="password" size="50" name="matkhau" class="form-control"></td>
	</tr>
  
	<tr>
		<td><input style="font-size: 20px;" type="submit" name="dangnhap" value="Đăng nhập" class="btn btn-primary btn-block"><a href="index.php"></a></td>
		<td><a href="http://localhost:8080/web_vieclam/admincp/login.php" style="font-size: 20px;"> Đăng nhập Admin </a></td> 
	</tr>
</table>

</form>

<?php
	// session_start();
	if(isset($_POST['dangnhap'])) {
		$email = $_POST['email'];
		$matkhau = ($_POST['matkhau']);
    // $sql_dangnhap="INSERT INTO dangky(email,matkhau) VALUE('".$email."','".$matkhau."')";
    $sql_dangnhap = "SELECT email, matkhau FROM dangky WHERE email='$email'";
    $result= mysqli_query($mysqli,$sql_dangnhap) ;
    //Lấy mật khẩu trong database ra
    $row = mysqli_fetch_array($result);
    if (mysqli_num_rows($result) == 0) {
        echo "Tên đăng nhập này không tồn tại. Vui lòng kiểm tra lại. <a href='index.php?quanly=dangnhap>Trở lại</a>";
        exit;
    }
    $matkhau = md5($matkhau);
    //So sánh 2 mật khẩu có trùng khớp hay không
    if ($matkhau != $row['matkhau']) {
        echo "Mật khẩu không đúng. Vui lòng nhập lại. <a href='index.php?quanly=dangnhap'>Trở lại</a>";
        exit;
    }

    $_SESSION['dk'] = $email;
    // echo "Xin chào " . $username . ". Bạn đã đăng nhập thành công. <a href='/'>Về trang chủ</a>"
    echo "<h5 style='color:green; right:50px;'>Bạn đã đăng nhập thành công </h5>";
    echo"<a href='index.php'>Về trang chủ</a>";
    die();
  }
?>


    </div>
</div>


