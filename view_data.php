<?php 
include('op_lib.php');
$param = decode($_GET['link']);


$table = $param['table'];
$id = $param['id'];

$res = get_data($table, $id);
if($res['status']=='success')
{
    $data =$res['data'];
    unset($data['id']);
    unset($data['created_by']);
    unset($data['created_at']);
    unset($data['updated_at']);
    unset($data['updated_by']);
}
?>

<style>
/*body {*/
/*  -webkit-user-select: none;*/
/*     -moz-user-select: -moz-none;*/
/*      -ms-user-select: none;*/
/*          user-select: none;*/
/*}*/

@media print {
         body {display:none;}
      }
</style>
<script>
//document.addEventListener('contextmenu', event => event.preventDefault());
</script>
    <div class="content p-2 bg-light ">
		
				<?php 
			
				    $info ="<div class='table-responsive-sm'><table class='table table-borderd'>";
			    foreach($data as $key => $value) 
			    {
			        
			        if($key =='photo')
			        {
			            $display_key = add_space($key);
			            $display_val = "<a href='upload/".$value."'  download ='photo.jpg'><img src='upload/".$value."' width='100px' class='img-thumbnail' ></a>";
			        }
			       
			        else if($key =='fee')
			        {
			            $display_key = add_space($key);
			            $display_val = "<a href='upload/".$value."'  download ='fee.jpg'> <img src='upload/".$value."' width='100px' class='img-thumbnail' ></a>";
			        }
			       
			       
			        else{
			        $display_key = add_space($key);
			        $display_val = wordwrap($value,55,'<br>',true);
			        }
			        
			        $info = $info."<tr><td><b>".$display_key."</b></td><td>".$display_val ."</td></tr>";
			      
			    }
			   $info =$info."</table></div>";
			    
			    echo $info;
			    ?>
		
    </div>
