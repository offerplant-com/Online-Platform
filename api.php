<?php
header("Access-Control-Allow-Origin: *");
require_once('op_lib.php');
$token =$_REQUEST['token'];
/* Updated on Cpanel Also */
if($token ==$api_key) 
{
	
	if(isset($_GET['task']))
	{
	$task =$_REQUEST['task'];
	$auth_key =$_REQUEST['auth_key'];
	$user_id=$req_by;
	$api_data =array('req_by'=>$_REQUEST['req_by'],'task'=>$_REQUEST['task'],'auth_key'=>$_REQUEST['token']);
	insert_data('tbl_api_history',$api_data);
	
	if(isset($_REQUEST['adm_no']))
	{
	$id =studentid($_REQUEST['adm_no']);
	}
	switch($task)
		{
		    case "get_otp":
    		    extract($_REQUEST);
    		   	$found  = get_data('tbl_customer', $cust_mobile, null, 'cust_mobile');
    			if($found['count'] <= 0)
    			    {
    			     insert_data('tbl_customer', array('cust_mobile'=>$cust_mobile,'created_at' =>$ctime));
    			    }
			    $res  = get_data('tbl_customer', $cust_mobile, null, 'cust_mobile');
			    $res['otp'] =rand(100000,999999);
			    // Send OTP Via SMS or Email 
			    echo json_encode($res);
			    break;
			
			case "update_customer":
    		    extract($_REQUEST);
    		    $res  = update_data('tbl_customer', $_POST, $cust_mobile ,'cust_mobile');
    			echo json_encode($res);
		        break;
		    
		    case "get_customer":
    		    extract($_REQUEST);
    		    $res  = get_data('tbl_customer', $cust_mobile, null ,'cust_mobile');
    		    echo json_encode($res);
		        break;
		        
		    case "add_request":
    		    extract($_REQUEST);
    		    $_POST['cust_id'] =$req_by;
    		    $_POST['req_photo'] = upload_img('image')['id'];
    		    $res  = insert_data('tbl_request', $_POST);
    		    echo json_encode($res);
		        break;
		    
		    case "update_request":
    		    extract($_REQUEST);
    		    $res  = update_data('tbl_request', $_POST, $id);
    		    echo json_encode($res);
		        break;
		        
		   case "upload" :
		        $_POST['req_photo'] = $base_url."upload/".upload_img('image')['id'];
		        $res = insert_data('tbl_request' ,$_POST);
		        echo json_encode($res);
		        break;
		    
		    case "get_all_request":
    		    extract($_REQUEST);
    		    $res  = get_all('tbl_request', '*', array('cust_mobile'=>$cust_mobile));
    		    echo json_encode($res);
		        break;
		    
		       
		    case "get_request":
    		    extract($_REQUEST);
    		    $res  = get_data('tbl_request', $id);
    		    echo json_encode($res);
		        break;
		        
		    case "add_tech":
    		    extract($_REQUEST);
    		    $res  = get_data('tbl_tech', $tech_mobile, null, 'tech_mobile');
    		    if($res['count']<=0)
    		    {
    		        $res  = insert_data('tbl_tech', $_POST);
    		    }
    		    else{
    		        $res  = update_data('tbl_tech', $_POST, $tech_mobile ,'tech_mobile');   
    		    }
    		    echo json_encode($res);
		        break;
		        
		    case "get_tech":
		        extract($_REQUEST);
    		    $res  = get_data('tbl_tech', $tech_mobile, null, 'tech_mobile');
    		    echo json_encode($res);
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
