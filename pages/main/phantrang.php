<div id="phantrang" >
<p style='right:450px ' >Trang:</p>	
<ul>
	
	<?php
	if($trang!=1){
		?>
	<a href='?quanly=<?php echo $tentrang;?>&trang=<?php echo $trang-1;?>'><li style=' list-style: none ;top:500px' > &#8592</li></a>
	<?php }?>
	<?php
	
	for($i=1;$i<=$sotrang;$i++){
		if($i==$trang){
			echo "<a href='?quanly={$tentrang}&trang={$i}'><li style='background:#666666;color:white ; list-style: none '>".$i."</li></a>";
		}else
		echo "<a href='?quanly={$tentrang}&trang={$i}'><li  style=' list-style: none; '>".$i."</li></a>";
	}
	if($trang!=$sotrang){
		?>
	<a href='?quanly=<?php echo $tentrang;?>&trang=<?php echo $trang+1;?>'><li style=' list-style: none'>&#8594</li></a>
	<?php }?>
	</ul>
	</div>
	