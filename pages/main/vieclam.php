

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Việc làm</title>
    <link rel="stylesheet" type="text/css" href="css/vieclam.css">
</head>
<body>
<div id="title">
    <nav class="navbar navbar-expand-lg ">
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="navbarnav" id="navbarNav">
        <h2>Tìm việc làm</h2><br>
        <h6><a href="index.php">Trang chủ</a> / việc làm</h6>
        
        </div>
    </nav>
</div>

<div id="main">
    <div class ="sidebar">
    <ul class="listsidebar">
       <!-- <li><a href="index.php?quanly=vieclam&id=1">Tìm kiếm theo từ khóa</a></li> -->
       

  

     
       <li>
       <!-- <input class="form1" list="datalistOptions"  type="text"  placeholder=" Tìm kiếm từ khóa..." name="tukhoa">  -->
     <input class="form1" list="datalistOptions"  placeholder="   Tìm kiếm từ khóa..." > 
     <!-- <datalist id="datalistOptions">
      <option value="Lập trình">
      <option value="Thư kí">
      <option value="Quản lí">
      <option value="Seller">
      <option value="Bán hàng">
    </datalist>  -->
       </li>
       


       <li><h5>Địa điểm</h5></li>

    <li>
    <select class="form1 form-select-lg mb-3" aria-label=".form-select-lg example">
    <option selected>Tất cả các thành phố</option>
    <option value="1">San Francisco</option>
    <option value="2">New York</option>
    <option value="3">Seattle</option>
    </select>

    </li> 

    <li><h5>Ngành nghề</h5></li>

      <li>
      <input class="form1 " list="datalistOptions"  type="text"  placeholder=" Tìm kiếm từ khóa..." name="tukhoa">
            <!-- <input class="form" list="datalistOptions"  placeholder="   Tìm kiếm từ khóa..." > -->
            <datalist id="datalistOptions">
              <option value="Lập trình">
              <option value="Thư kí">
              <option value="Quản lí">
              <option value="Seller">
              <option value="Bán hàng">
            </datalist> 

    </li>
    <li><h5>Ngày đăng</h5></li>
    <li>
        <div class="checkbox">
          <label><input type="checkbox" value="">Tất cả</label>
        </div>
        <div class="checkbox">
          <label><input type="checkbox" value="">24 giờ qua</label>
        </div>
        <div class="checkbox ">
          <label><input type="checkbox" value="" >7 ngày</label>
        </div>
        </li>
<li><h5>Loại công việc</h5></li>
<li>

<!-- Default switch -->
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitches">
  <label class="custom-control-label" for="customSwitches">Toggle this switch element</label>
</div>
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitches1">
  <label class="custom-control-label" for="customSwitches">Toggle this switch element</label>
</div>
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitches2">
  <label class="custom-control-label" for="customSwitches">Toggle this switch element</label>
</div>
<div class="custom-control custom-switch">
  <input type="checkbox" class="custom-control-input" id="customSwitch2" disabled>
  <label class="custom-control-label" for="customSwitch2">Toggle this switch element</label>
</div>
</li>
<li><h5>Lương</h5></li>
<li>

<input type="range" class="form-range" width="700px" id="customRange1">

    
  </form>  
</li>
<input type="button" class="btn  btn-primary" value="Tìm việc">
    </ul>

    </div>
    



    <div class="maincontent">
    <div class="list-item">
   
  
     <?php
        $sql = "SELECT * FROM baivietvl, nganhnghe, diadiem
        WHERE baivietvl.id_nganhnghe = nganhnghe.id_nganhnghe 
        AND baivietvl.id_diadiem = diadiem.id_diadiem ORDER BY id_baiviet ASC ";
        $query=mysqli_query($mysqli,$sql);
        while($row = mysqli_fetch_array($query)) {

?>
<div class="item">
                    <div class="item-top">
                        <div class="fix">
                        <div class="item-top-avt">
                        <img width="100%" src="nhatuyendung/modules/qlbvvl/uploads/<?php echo $row['hinhanh'] ?>"> 
                        </div>
                        <div class="item-mid">
                             <div class="item-mid-title"><a target="_blank" href=""><?php echo $row['tenvieclam'] ?></a></div> 
                            <div class="item-top-info">
                            <p class="item-top-text"><i class="fa-solid fa-bag-shopping"></i><?php echo $row['tennganhnghe']?></p>
                            <p class="item-top-text"><i class="fa-solid fa-location-dot"></i><?php echo $row['tendiadiem'] ?></p>
                            <p class="item-top-text"><i class="fa-solid fa-clock"></i><?php echo $row['ngaydang']?> </p>
                            <p class="item-top-text"><i class="fa-solid fa-money-bill"></i><?php echo $row['luong']?> </p>
                            </div>
                            <div class="item-mid-button">
                            <span class="time">Tạm thời</span>
                            <span class="privacy">Nổi bật</span>
                            <span class="required">Cấp bách</span>
                            </div>
                        </div>  
                        </div>
                        <div class="item-right">
                        <i class="fa-regular fa-bookmark"></i>  
                        </div>
                    </div>
                </div>
    <?php
    }
    ?> 
    </div>
    </div>
</div>

</body>
</html>
      

      