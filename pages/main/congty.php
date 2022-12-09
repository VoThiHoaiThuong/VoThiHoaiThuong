<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Công ty</title>
    <link rel="stylesheet" type="text/css" href="css/congty.css">
</head>
<body>
<div id="title">
    <nav class="navbar navbar-expand-lg ">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="navbarnav" id="navbarNav">
        <h2>Tìm công ty</h2><br>
        <h6><a href="index.php">Trang chủ</a> / công ty</h6>
        
        </div>
    </nav>
</div>

<div id="main">
    <div class ="sidebar">
    <ul class="listsidebar">
       <li><h5>Tìm kiếm theo từ khóa</h5></li>
       
     
       <li>
       <input class="form1 search-name-post" list="datalistOptions"  placeholder="Tìm kiếm từ khóa..." > 
   
       </li>
       


       <li><h5>Địa điểm</h5></li>

    <li>
    <select style="outline: none" class="form1 form-select-lg mb-3 filter_city" aria-label=".form-select-lg example">
      <option selected class="filter_city-item" value="0">Tất cả các thành phố</option>
      
      
      <?php

          //   if(isset($_GET['trang'])){
          //     $trang=$_GET['trang'];
          //   }else{
          //     $trang=1;
          //   }
         
          //   $sosangpham1trang=4;

          // $phantrang=($trang*$sosangpham1trang)-$sosangpham1trang;
          $sql = "SELECT * FROM diadiem ";
          $querydd=mysqli_query($mysqli,$sql);
        if($querydd){
          while($row = mysqli_fetch_array($querydd)){
            echo '<option class="filter_city-item" value='.$row["id_diadiem"].'>'.$row["tendiadiem"].'</option>';
              }
        //   $sql_phantrang="SELECT * FROM diadiem";
        //   $query_phantrang=mysqli_query($mysqli,$sql_phantrang);
        //   $row_phantrang=mysqli_num_rows($query_phantrang);
        //   $sotrang=ceil($row_phantrang/$sosangpham1trang);
        //   $tentrang="timkiem";
        //   include('pages/main/phantrang.php');
        // }else{
        //     echo "Không có kết quả tìm kiêm";
          }
        ?>
      </select>

    </li> 

    <li><h5>Ngành nghề</h5></li>

      <li>
      <select style="outline: none" class="form1 form-select-lg mb-3 filter_career" aria-label=".form-select-lg example">
      <option class="filter_career-item" value="0" selected>Tất cả ngành nghề</option>
        <?php
          $sql = "SELECT * FROM nganhnghe";
          $querynn=mysqli_query($mysqli,$sql);
          while($row = mysqli_fetch_array($querynn)){
            echo '<option class="filter_career-item" value='.$row["id_nganhnghe"].'>'.$row["tennganhnghe"].'</option>';
          }
        ?>
      </select>

    </li>
   
    <li><h5>Quy mô</h5></li>
    <li>
        <div class="checkbox">
          <label><input type="checkbox" value="">50-100 nhân viên</label></br>
        </div>
        <div class="checkbox">
          <label><input type="checkbox" value="">100-200 nhân viên</label></br>
        </div>
        <div class="checkbox ">
          <label><input type="checkbox" value="" >200-300 nhân viên</label></br>
        </div>
        </li>
        
    <!-- <div class="slidecontainer">
   <input type="range" min="1900" max="2022" value="50" class="slider" id="myRange">
   <p>Năm thành lập: <span id="demo"></span></p>
 </div> -->

<input type="button" class="btn btn-search  btn-primary" value="Tìm việc">
<input type="button" class="btn btn-renew  btn-primary" value="Làm Mới">
    </ul>

    </div>



    <div class="maincontent">
    <div class="list-item">
   
  
    <?php
if(isset($_GET['trang'])){
  $trang=$_GET['trang'];
}else{
  $trang=1;
}
$sosangpham1trang=4;
$phantrang=($trang*$sosangpham1trang)-$sosangpham1trang;

        $sql = "SELECT * FROM baivietct, nganhnghe, diadiem
        WHERE baivietct.id_nganhnghe = nganhnghe.id_nganhnghe 
        AND baivietct.id_diadiem = diadiem.id_diadiem ORDER BY id_baiviet DESC LIMIT $phantrang,$sosangpham1trang ";
        $query=mysqli_query($mysqli,$sql);
   if ($query) {
        while($row = mysqli_fetch_array($query)) {
         
          
?>
<div class="item1">
                    <div class="item-top">
                        <div class="fix">
                        <div class="item-top-avt">
                        <img width="100%" src="./images/<?php echo $row['hinhanh'] ?>"> 
                        </div>
                        <div class="item-mid">
                            <div class="item-mid-title"><a target="_blank" href="index.php?quanly=chitietcongty&id=<?php echo $row['id_baiviet']?>"><?php echo $row['tencongty'] ?></a></div> 
                            <div class="item-top-info">
                            <p class="item-top-text item-top-text-career" data="<?php echo $row['id_nganhnghe']?>"><i class="fa-solid fa-bag-shopping"></i><?php echo $row['tennganhnghe']?></p>
                            <p class="item-top-text item-top-text-city" data="<?php echo $row['id_diadiem']?>"><i class="fa-solid fa-location-dot"></i><?php echo $row['tendiadiem'] ?></p>
                           
                            <div class="item-mid-button">
                            <span class="privacy">Featured</span>
                            <span class="time">Công việc – 0</span>
                            </div>
                         
                            </div>
                        </div>  
                        </div>
                        <div class="item-right">
                        <i class="fa-regular fa-bookmark"></i>  
                        </div>
                    </div>
                    <p><?php echo $row["mota"]?></p>
                  </div>

    <?php
    }
  }
    $sql_phantrang="SELECT * FROM baivietct, nganhnghe, diadiem
    WHERE baivietct.id_nganhnghe = nganhnghe.id_nganhnghe 
    AND baivietct.id_diadiem = diadiem.id_diadiem ORDER BY id_baiviet DESC   ";
    $query_phantrang=mysqli_query($mysqli,$sql_phantrang);
    $row_phantrang=mysqli_num_rows($query_phantrang);
    $sotrang=ceil($row_phantrang/$sosangpham1trang);
    $tentrang="congty";
    include('pages/main/phantrang.php');
    ?> 
    </div>
    </div>
</div>


<script>
  var slider = document.getElementById("myRange");
  var output = document.getElementById("demo");

  const numberFormat = new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'nam',
  });

  output.innerHTML = numberFormat.format(slider.value); 
  slider.oninput = function() {
    output.innerHTML = numberFormat.format(this.value);
  }
</script>

<script src="js/congty.js"></script>




</body>
</html>
      

      