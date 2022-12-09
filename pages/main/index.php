
<h1>VIỆC LÀM DÀNH CHO BẠN</h1>
         <!-- <h5>Tìm việc làm, Cơ hội làm việc & Nghề nghiệp </h5> -->

        <img src="images/banner.jpg" width="100%" 
        height="auto" >
      </div>
   
    <div class="search-job text-center" >
    
            <input class="form  search-name-post" list="datalistOptions"  type="text"  placeholder=" Tìm kiếm từ khóa...">
            <!-- <input class="form" list="datalistOptions"  placeholder="   Tìm kiếm từ khóa..." > -->
            <!-- <datalist id="datalistOptions">
              <option value="Lập trình">
              <option value="Thư kí">
              <option value="Quản lí">
              <option value="Seller">
              <option value="Bán hàng">
            </datalist>  -->
    
            <!-- <select class="form form-select-lg mb-3" aria-label=".form-select-lg example">
              <option selected>Tất cả các thành phố</option>
            </select> -->


            <select style="outline: none" class="form1 form-select-lg mb-3 filter__city" aria-label=".form-select-lg example">
          <option selected class="filter__city-item" value="0">Tất cả các thành phố</option>
            <?php
              $sql = "SELECT * FROM diadiem";
              $query=mysqli_query($mysqli,$sql);
              while($row = mysqli_fetch_array($query)){
                echo '<option class="filter__city-item" value='.$row["id_diadiem"].'>'.$row["tendiadiem"].'</option>';
              }
            ?>
        </select>
  
  
  
      <a href="index.php?quanly=vieclam"><input type="button" class="btn  btn-primary" value="Tìm việc"></a>
      
      
    
      
     
  
</div>
<!-- top -->
      
<section id="nganhnghe">
    <div class="conatiner text-center">

      <h3> TOP NHÀ TUYỂN DỤNG PHỔ BIẾN </h3>
      <p>Mỗi ngày có thêm hàng trăm công việc mới được cập nhật vào hôm nay</p>
      <div>
        <img src="images/acer.png">
        <img src="images/ap.png">
        <img src="images/asus.png">
        <img src="images/dell.png">
        <img src="images/hp.png">
        <img src="images/amazon.png">
        
      </div>
      <div>
        <img src="images/intel.png">
        <img src="images/microsoft.png">
        <img src="images/samsung.png">
        <img src="images/sony.png">
        <img src="images/netflix.png">
        <img src="images/cisco.png">
      </div>
      <div>
        <img src="images/adobe.png">
        <img src="images/alpha.png">
        <img src="images/ibm.png">
        <img src="images/tesla.png">
        <img src="images/meta.png">
        <img src="images/alibaba.jpg">
      </div>
    </div>
    </section> 
  <!-- Recent Jobs -->

  <section id="site">
      <div class="container text-center">
        
        <h3>THÔNG KÊ DỮ LIỆU</h3>
        <div class="row">
          <div class="col-md-6">
              <div class="row">
                <div class="col-6">
                  <div class="stats-box">
                 <i class="fa fa-solid fa-user"></i><span><small>100k +</small></span></a>   
                   <p>JOB Seekers</p>
            </div>
                </div>
                <div class="col-6">
                  <div class="stats-box">
                    <i class="fa fa-brands fa-slideshare"></i><span><small>500 +</small></span>
                   <p>Employers</p>
            </div>
                </div>
              </div>
          </div>

          <div class="col-md-6">
            <div class="row">
              <div class="col-6">
                <div class="stats-box">
                  <i class="fa fa-solid fa-hand-peace"></i><span><small>10k +</small></span>
                 <p>Active Jobs</p>
          </div>
              </div>
              <div class="col-6">
                <div class="stats-box">
                  <i class="fa fa-solid fa-building"></i><span><small>400 +</small></span>
                 <p>Companies</p>
          </div>
              </div>
            </div>
        </div>
        
      </div>
      </div>
    </section>
