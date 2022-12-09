<?php
   // $sql_ctuv ="SELECT * FROM baivietuv, nganhnghe, diadiem
   //   WHERE baivietuv.id_nganhnghe = nganhnghe.id_nganhnghe 
   //   AND baivietuv.id_diadiem = diadiem.id_diadiem 
   //   AND baivietuv.id_baiviet = '$_GET[id]' LIMIT 1";
    
   $sql_ctuv = "SELECT nn.tennganhnghe, uv.tenungvien, uv.luong, dd.tendiadiem, uv.mota, uv.ngaydang, uv.hinhanh
            FROM baivietuv AS uv
            JOIN nganhnghe AS nn ON uv.id_nganhnghe = nn.id_nganhnghe
            JOIN diadiem AS dd ON uv.id_diadiem = dd.id_diadiem
            WHERE uv.id_baiviet = '$_GET[idPost]' LIMIT 1";
            
   $result_ctuv = mysqli_query($mysqli,$sql_ctuv);
	
   
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Chi tiết</title>
   <link rel="stylesheet" type="text/css" href="css/chitietungvien.css">
   <link rel="stylesheet" type="text/css" href="css/ungvien.css">
</head>
<body>
   <?php
    while($row_sql=mysqli_fetch_assoc($result_ctuv)){
   ?>                 
   <div class="upper-box">
      <div class="auto-container">
         <div class="upper-box__job">
            <div class="item">
               <div class="item-top">
                  
                        <div class="fix">
                           <div class="item-top-avt">
                                 <img src="./images/<?php echo $row_sql["hinhanh"]?>" alt="">
                           </div>
                           <div class="item-mid">
                                 <div class="item-mid-title"><a href=""><?php echo $row_sql["tenungvien"]?></a></div>
                                 <div class="item-top-info">
                                    <p class="item-top-text"><i class="fa-solid fa-bag-shopping"></i><?php echo$row_sql["tennganhnghe"]?></p>
                                    <p class="item-top-text"><i class="fa-solid fa-location-dot"></i><?php echo $row_sql["tendiadiem"]?></p>    
                                    <p class="item-top-text"><i class="fa-solid fa-money-bill"></i><?php echo $row_sql["luong"]?></p>
                                    <p class="item-top-text"><i class="fa-solid fa-clock"></i>Thành viên kể từ <?php echo $row_sql["ngaydang"]?></p>
                                 </div>
                                 
                           </div>  
                        </div>
                        
               </div>
            </div>
         </div>
         <div class="upper-box__btn">
            <button>Tải xuống CV</button>
            <span><i class="fa-regular fa-bookmark"></i></span>
         </div>
      </div>
   </div>

   <div class="under-box">
      <div class="job-desc">
         <p class="job-desc__title">Giới thiệu</p>
         <p class="job-desc__info"><?php echo $row_sql["mota"]?></p>
      </div>
      <div class="under-box__share">
         <p class="under-box__share-text">Chia sẽ công việc này</p>
         <div class="under-box__list-btn">      
            <button class="facebook"><i class="fa-brands fa-facebook-f"></i> <span>Facebook</span></button>

            <button class="twitter"><i class="fa-brands fa-twitter"></i> <span>Twitter</span></button>

            <button class="pinterest"><i class="fa-brands fa-pinterest-p"></i> <span>Pinterest</span></button>
         </div>
      </div>
   </div>
   <?php
   }
   ?>
                  
</body>
</html>