<?php
   

   $sql ="SELECT *FROM baivietct, nganhnghe, diadiem
   WHERE baivietct.id_nganhnghe = nganhnghe.id_nganhnghe
   AND baivietct.id_diadiem = diadiem.id_diadiem 
   AND baivietct.id_baiviet='$_GET[id]' limit 1";
   $query_chitiet=mysqli_query($mysqli,$sql);
   while($row_sql = mysqli_fetch_array($query_chitiet)) {

   
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Chi tiết</title>
   <link rel="stylesheet" type="text/css" href="css/chitietcongty.css">
   <link rel="stylesheet" type="text/css" href="css/congty.css">
</head>
<body>
   <div class="upper-box">
      <div class="auto-container">
         <div class="upper-box__job">
            <div class="item">
               <div class="item-top">
                  <?php
                     echo '
                        <div class="fix">
                           <div class="item-top-avt">
                                 <img src="./images/'.$row_sql["hinhanh"].'" alt="">
                           </div>
                           <div class="item-mid">
                                 <div class="item-mid-title"><a href="">'.$row_sql["tencongty"].'</a></div>
                                 <div class="item-top-info">
                                    <p class="item-top-text"><i class="fa-solid fa-bag-shopping"></i>'.$row_sql["tennganhnghe"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-location-dot "></i>'.$row_sql["tendiadiem"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-envelope "></i>'.$row_sql["email"].'</p>
                                    <p class="item-top-text"><i class="fa-solid fa-phone"></i>'.$row_sql["sdt"].'</p>
                                 </div>
                                 
                           </div>  
                        </div>
                     ';
   
                  ?>
               </div>
            </div>
         </div>
         <div class="upper-box__btn">
            <!-- <button>Nộp đơn xin việc</button> -->
            <span><i class="fa-regular fa-bookmark"></i></span>
         </div>
      </div>
   </div>

   <div class="under-box">
      <div class="job-desc">
         <p class="job-desc__title">Mô tả công việc</p>
         <p class="job-desc__info">
            <?php
              echo $row_sql["noidung"];
            ?>

            <?php
            }
            ?>
         </p>
      </div>
      <div class="under-box__share">
         <p class="under-box__share-text">Chia sẻ công việc này</p>
         <div class="under-box__list-btn">      
            <button class="facebook"><i class="fa-brands fa-facebook-f"></i> <span>Facebook</span></button>

            <button class="twitter"><i class="fa-brands fa-twitter"></i> <span>Twitter</span></button>

            <button class="pinterest"><i class="fa-brands fa-pinterest-p"></i> <span>Pinterest</span></button>
         </div>
      </div>
   </div>
</body>
</html>