  <!-- Banner -->
  
  <section>
      <div class="banner text-center" >
       <?php
      
        if(isset($_GET['quanly']))
          {
            $tam=$_GET['quanly'];
          }
          else
          {
            $tam='';
          }
          if($tam=='vieclam')
          {
            include("main/vieclam.php");
          }
          elseif($tam=='ungvien')
          {
            include("main/ungvien.php");
          }
          elseif($tam=='congty')
          {
            include("main/congty.php");
          }
          elseif($tam=='lienhe')
          {
            include("main/lienhe.php");
          }
          elseif($tam=='dkntd')
          {
            include("main/dkntd.php");
          }
          elseif($tam=='dk')
          {
            include("main/dk.php");
          }
          elseif($tam=='dangnhap')
          {
            include("main/dn.php");
          }
          elseif($tam=='dangnhapntd')
          {
            include("main/dnntd.php");
          }
          elseif($tam=='thaydoimk')
          {
            include("main/thaydoimk.php");
          }
          elseif($tam=='thaydoimkntd')
          {
            include("main/thaydoimkntd.php");
          }
          elseif($tam=='chitietvieclam')
          {
            include("main/chitietvieclam.php");
          }
          elseif($tam=='chitietcongty')
          {
            include("main/chitietcongty.php");
          }
          elseif($tam=='chitietungvien')
          {
            include("main/chitietungvien.php");
          }
      

         
          else
          {
            include("main/index.php");
          }
      

       ?> 
      
    </div>
    </section>
   