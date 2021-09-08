<?php
header("Access-Control-Allow-Origin: *");
require_once('bine/conn.php');
$token =$_REQUEST['token'];

if($token ==$api_key) 
{
	
	if(isset($_GET['task']))
	{
	$task =$_REQUEST['task'];
	$auth_key =$_REQUEST['auth_key'];
	$api_data =array('adm_no'=>$adm_no,'task'=>$task,'auth_key'=>$auth_key);
	insert_data('api_history',$api_data);
	
	if(isset($_REQUEST['adm_no']))
	{
	$id =studentid($_REQUEST['adm_no']);
	}
	switch($task)
		{
		    case "get_mobile":
				$mob_no =$_REQUEST['mobile'];
				$sql ="select student_name, student_admission from student where student_mobile='$mob_no' and status ='ACTIVE'";
				$res =direct_sql($sql,false);
				echo $res;
				break;
				
			 case "verify_student":
				$mob_no =$_REQUEST['mobile'];
				$data = verify_student($mob_no);
				echo $data;
				break;
				
			 case "verify_teacher":
				$mob_no =$_REQUEST['mobile'];
				$data = verify_teacher($mob_no);
				echo $data;
				break;
		
			case "get_student" :
				echo $all_data = get_data('student',$id);
				break;
			case "get_att" :
			    $adm_no =$_REQUEST['adm_no'];
				$id =studentid($adm_no);
				$table =strtolower(date('F_Y'));
				$all_data = get_array($table,$id);
				$all_data['month_name'] =$table;
				echo json_encode($all_data);
				break;
		
			case "get_hw" :
				$adm_no =$_REQUEST['adm_no'];
				$hw_date=$_REQUEST['hw_date'];
				$id =studentid($adm_no);
				$sclass =get_data('student',$id,'student_class');
				$ssec =get_data('student',$id,'student_section');
				$sql ="select p1_hw,p2_hw,p3_hw,p4_hw,p5_hw,p6_hw,p7_hw, hw_file from logsheet where hw_class='$sclass' and hw_section='$ssec' and hw_date ='$hw_date'";
				$res =direct_sql($sql,false);
				echo $res;
				break;
				
			case "get_fee" :
				$adm_no =$_REQUEST['adm_no'];
				$id =studentid($adm_no);
				$sql ="select * from receipt where student_id ='$id' and status ='PAID'";
				$res =direct_sql($sql,false);
				echo $res;
				break;
				
			case "get_gps" :
				$adm_no =$_REQUEST['adm_no'];
				$id =studentid($adm_no);
				$trip_id =get_data('student',$id,'trip_id');
				$gps_key =get_data('trip_details',$trip_id,'gps_key');
				echo json_encode(array('gps_key'=>$gps_key));
				reak;
				
			case "get_notice" :
				$sql ="select * from notice where status ='SHOW' order by id desc limit 10";
				$res =direct_sql($sql,false);
				echo $res;
				break;
			case "add_complain" :
			     print_r($_FILES);
			     $cfile = uploadimg('cfile');
			     $_POST['cfile'] =$cfile;
			     print_r($_POST);
			     insert_data('complain',$_POST);
			     break;
			default:
			    echo" No Task Selected or Invalid Task";
		}
	}
}
else{
	die("Not Authorised");
}


?>
