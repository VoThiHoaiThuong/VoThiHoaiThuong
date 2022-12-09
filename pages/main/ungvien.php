<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ứng viên</title>
    <link rel="stylesheet" type="text/css" href="css/ungvien.css">
</head>
<body>
<div id="title">
    <nav class="navbar navbar-expand-lg ">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="navbarnav" id="navbarNav">
        <h2>Tìm ứng cử viên</h2><br>
        <h6><a href="index.php">Trang chủ</a> / Ứng Viên</h6>
        
        </div>
    </nav>
</div>

<div id="main">
    <div class ="sidebar">
    <ul class="listsidebar">
       <!-- <li><a href="index.php?quanly=vieclam&id=1">Tìm kiếm theo từ khóa</a></li> -->
      
      <li><h5>Tìm kiếm theo từ khóa</h5></li>
      <li>
       <!-- <input class="form1" list="datalistOptions"  type="text"  placeholder=" Tìm kiếm từ khóa..." name="tukhoa">  -->
        <input class="form1 search-name-post" list="datalistOptions"  placeholder="Tìm kiếm từ khóa..." > 
      </li>
       


      <li><h5>Địa điểm</h5></li>
      <li>
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
      </li> 

      <li><h5>Ngành nghề</h5></li>
      <li>
        <select style="outline: none" class="form1 form-select-lg mb-3 filter__career" aria-label=".form-select-lg example">
          <option class="filter__career-item" value="0" selected>Tất cả ngành nghề</option>
            <?php
              $sql = "SELECT * FROM nganhnghe";
              $query=mysqli_query($mysqli,$sql);
              while($row = mysqli_fetch_array($query)){
                echo '<option class="filter__career-item" value='.$row["id_nganhnghe"].'>'.$row["tennganhnghe"].'</option>';
              }
            ?>
        </select>
      </li>
      <li><h5>Ngày đăng</h5></li>
      <li>
          <div class="checkbox">
            <label><input type="checkbox" value="1">Tất cả</label>
          </div>
          <div class="checkbox">
            <label><input type="checkbox" value="2">24 giờ qua</label>
          </div>
          <div class="checkbox ">
            <label><input type="checkbox" value="3" >7 ngày</label>
          </div>
      </li>

        <li>
        <!-- Default switch -->
        <div class="slidecontainer">
          <input type="range" min="6000000" max="50000000" value="50" class="slider" id="myRange">
          <p>Mức lương tối thiểu: <span id="demo"></span></p>
        </div>
        </li>
  
      <input type="button" class="btn btn-search  btn-primary" value="Tìm ứng viên">
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
$sosangpham1trang=3;
$phantrang=($trang*$sosangpham1trang)-$sosangpham1trang;

        $sql = "SELECT * FROM baivietuv, nganhnghe, diadiem
        WHERE baivietuv.id_nganhnghe = nganhnghe.id_nganhnghe 
        AND baivietuv.id_diadiem = diadiem.id_diadiem ORDER BY id_baiviet DESC LIMIT $phantrang,$sosangpham1trang ";
        $query=mysqli_query($mysqli,$sql);
   if ($query) {
        while($row = mysqli_fetch_array($query)) {
         
          
?>
        <div class="item">
                    <div class="item-top">
                        <div class="fix">
                        <div class="item-top-avt">
                        <img width="100%" src="./images/<?php echo $row['hinhanh'] ?>"> 
                        </div>
                        <div class="item-mid">
                            <div class="item-mid-title"><a target="_blank" href="index.php?quanly=chitietungvien&idPost=<?php echo $row['id_baiviet']?>"><?php echo $row['tenungvien'] ?></a></div> 
                            <div class="item-top-info">
                            <p class="item-top-text item-top-text-career" data="<?php echo $row['id_nganhnghe']?>"><i class="fa-solid fa-bag-shopping"></i><?php echo $row['tennganhnghe']?></p>
                            <p class="item-top-text item-top-text-city" data="<?php echo $row['id_diadiem']?>"><i class="fa-solid fa-location-dot"></i><?php echo $row['tendiadiem'] ?></p>
                            <!-- <p class="item-top-text"><i class="fa-solid fa-clock"></i><?php echo $row['ngaydang']?> </p> -->
                            <p class="item-top-text"><i class="fa-solid fa-money-bill"></i><?php echo $row['luong']?> </p>
                            
                          </div>
                            <!-- <div class="item-mid-button">
                            <span class="time">Xem hồ sơ</span>
                            <button class="btn btn-outline-primary" name="xemhs">Xem hồ sơ</button></br>
                            
                            </div> -->
                        </div>  
                        <div class="item-left">
                          <button class="btn btn-outline-primary"><a target="_blank" href="index.php?quanly=chitietungvien&idPost=<?php echo $row['id_baiviet']?>">Xem hồ sơ</button>
                        </div>
                    </div>
                    <div class="item-right">
                      <i class="fa-regular fa-bookmark"></i>  
                    </div>
                    </div>
                </div>
    <?php
    }
  }
    $sql_phantrang="SELECT * FROM baivietuv, nganhnghe, diadiem
    WHERE baivietuv.id_nganhnghe = nganhnghe.id_nganhnghe 
    AND baivietuv.id_diadiem = diadiem.id_diadiem ORDER BY id_baiviet DESC   ";
    $query_phantrang=mysqli_query($mysqli,$sql_phantrang);
    $row_phantrang=mysqli_num_rows($query_phantrang);
    $sotrang=ceil($row_phantrang/$sosangpham1trang);
    $tentrang="ungvien";
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
    currency: 'VND',
  });

  output.innerHTML = numberFormat.format(slider.value); 
  slider.oninput = function() {
    output.innerHTML = numberFormat.format(this.value);
  }
</script>

<script src="js/ungvien.js"></script>

</body>
</html>
 