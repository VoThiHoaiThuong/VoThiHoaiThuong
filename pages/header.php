 <!-- header -->
 
 <?php
   if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
      unset($_SESSION['dangky']);
   }

?>
 
 <section id="header">
      <div id="menubar">
          <nav class="navbar navbar-expand-lg ">
              <a class="navbar-brand" href="index.php"><img src="images/logo0.png"  alt=""></a>
              
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ">
        
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=vieclam&id=1">VIỆC LÀM</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=ungvien">ỨNG VIÊN</a>
                  </li>
                  <li class="nav-item ">
                    <a class="nav-link" href="index.php?quanly=congty"> CÔNG TY</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="index.php?quanly=tintuc">TIN TỨC</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="index.php?quanly=lienhe">LIÊN HỆ</a>
                    </li>

                    <?php
               
               if(isset($_SESSION['dangky'])){
                ?>
                <li><a href="index.php?dangxuat=1">Đăng xuất</a></li>
                <!-- <li><a href="index.php?quanly=thaydoimatkhau">Thay đổi mật khẩu</a></li>  -->
                <?php
                }else{
                   ?>
                   <li>        
                      <a href="index.php?quanly=dkntd"></a>
                    </li>
                    <li class="btn-box">         
                      <a class="btn btn-primary btn-login" href="index.php?quanly=dk">Đăng Nhập / Đăng Ký</a> 
                    </li>
                <?php
               }
                ?>

                    <!-- <li>        
                      <a href="index.php?quanly=dkntd"></a>
                    </li>
                 -->
                    
                </ul>
                
              </div>
            </nav>
      </div>
      </section>
      
    