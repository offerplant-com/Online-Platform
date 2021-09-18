<?php
require('function.php');
if (isset($_GET['task'])) {
	$task = $_GET['task'];
	if (isset($_SESSION['user_id'])) {
		$user_id = $_SESSION['user_id'];
	}
	switch ($task) {
		case "verify_login":
			extract($_POST);
			$arr = array('user_name' => $user_name, 'user_pass' => md5($user_password));
			$res = get_all('tbl_user', '*', $arr);

			if ($res['status'] == 'success' and $res['count'] == 1) {
				$sid = $res['data'][0]['id'];
				$udata = array('token' => $token);
				$result = update_data('tbl_user', $udata, $sid, 'id');
				$_SESSION['user_id'] = $sid;
				$_SESSION['user_type'] = $res['data'][0]['user_type'];
				$_SESSION['user_name'] = trim($user_name);
				//setcookie("username", $_SESSION['user_name'], time()+3600, "/", "",  0);
				$result['id'] = $sid;
				$result['status'] = 'success';
				$result['msg'] = 'Login Success';
				$result['url'] = 'index';
			} else {
				$result['id'] = 0;
				$result['status'] = 'fail';
				$result['msg'] = 'somthing went wrong';
			}
			echo json_encode($result);
			break;
		case "logout":
			$user_id = $_SESSION['user_id'];

			unset($_SESSION['user_name']);
			unset($_SESSION['user_type']);
			unset($_SESSION['user_id']);
			session_destroy();
			$result['id'] = $user_id;
			$result['status'] = 'success';
			$result['msg'] = "Logout Success";

			if (isset($_GET['rtype']) && $_GET['rtype'] == 'url') {
				echo "<script> window.location ='index.php' </script>";
			} else {
				$udata = array('token' => '');
				update_data('tbl_user', $udata, $user_id, 'user_id');
				echo json_encode($result);
			}
			break;
		case "forget_password":
			$user_name  = $_POST['user_name'];
			//$user_email  =$_POST['user_email'];
			$result = get_data('tbl_user', $user_name, null, 'user_name');
			//print_r($result);
			$res = $result['data'];
			if ($res['user_id']) {
				$id = $res['user_id'];
				$user_email = $res['user_email'];
				$np = rnd_str(6);
				$up = array('user_pass' => md5($np));
				$res = update_data('user', $up, $id, 'user_id');
				$sms = "Dear " . $user_name . " Your password is " . $np . " Regadrs, " . $inst_name . " " . $inset_url;
				//mail($user_email,'Password Recover' ,$sms ,$noreply_email);
				$data['id'] = $id;
				$data['status'] = 'success';
				$data['msg'] = "Your New Password Successfully Send to $user_email";
			} else {
				$data['id'] = 0;
				$data['status'] = 'error';
				$data['msg'] = 'No any user exist with this ID. Try Again';
			}
			echo json_encode($data);
			break;
		case "change_password":
			$user_name = $_POST['user_name'];
			$current = $_POST['current'];
			$new1 = $_POST['new1'];
			$confirm = $_POST['confirm'];
			$data['status'] = 'error';
			$data['count'] = 0;
			if ($new1 != $confirm) {
				$data['msg'] = "New Password and Confirm password doesn't match";
			} else if ($current == $new1) {
				$data['msg'] = "New Password Current password can't be same";
			} else {
				$data = update_data('tbl_user', array('user_pass' => md5($confirm)), $user_name, 'user_name');
			}
			echo json_encode($data);
			break;

		case "master_delete": // Delete Any Data From Table 
			extract($_POST);
			$res = remove_data($table, $id, $pkey);
			if (isset($url)) {
				$res['url'] = $url;
			}
			echo json_encode($res);
			break;
		case "edit_user":
			//print_r($_POST);
			$res = update_data('user', $_POST, $_POST['id']);
			break;

			/*------NEW TASK 07 NOv 2020----------*/

		case "update_status": // Update Status Data From Table 
			extract($_POST);
			print_r($_POST);
			$st = $_POST['data_status'];
			$sid = $_POST['sid'];
			$bdata = array('status' => $st);
			foreach ($sid as $id) {
				if ($st == 'DELETE') {
					$res = delete_data($table, $id, 'id');
				} else {
					$res = update_data($table, $bdata, $id, 'id');
				}
			}
			echo json_encode($res);
			break;

		case "bulk_import":
			extract($_POST);
			//print_r($_POST);
			$res = csvimport($table, $pkey);
			echo "<script> window.location='bulk_update.php?msg=" . $res['msg'] . "' </script>";
			break;

		case "bulk_export":
			if ($_SESSION['user_type'] == 'ADMIN') {
				$table = $_REQUEST['table'];
				if (isset($_REQUEST['col_name'])) {
					csvexport($table, "id, name, stock, rate");
				} else {
					csvexport($table);
				}
			}
			break;

		case "active_block": // Active of Block Selected Records 
			print_r($_POST);
			extract($_POST);
			$bdata = array('status' => $status);
			foreach ($id as $i) {
				$res = update_data($table, $bdata, $i, $pkey);
			}
			echo json_encode($res);
			break;

		case "master_block": // BLOCK Any Data From Table 
			extract($_POST);
			//print_r($_POST);
			$bdata = array('status' => 'BLOCK');
			$res = update_data($table, $bdata, $id, $pkey);
			echo json_encode($res);
			break;

		case "get_data": // Return Single Value form Database
			extract($_POST);
			$res = get_data($table, $id, $col);
			echo json_encode($res);
			break;

		case "get_dist":
			$code = $_GET['state_id'];
			$res = get_all('tbl_district', '*', array('state_id' => $code), 'district_name')['data'];
			foreach ($res as $dist) {
				echo "<option value='" . $dist['district_id'] . "'>" . $dist['district_name'] . "</option>";
			}
			break;

		case "get_block":
			$code = $_GET['district_id'];
			$res = get_all('tbl_block', '*', array('district_id' => $code), 'block_name')['data'];
			foreach ($res as $dist) {
				echo "<option value='" . $dist['block_id'] . "'>" . $dist['block_name'] . "</option>";
			}
			break;

		

		case "update_tech":
			extract($_POST);
		
			unset($_POST['isedit']);
			if ($isedit == 'yes') {
				$url = 'manage_tech';
			} else {
				$url = 'add_tech';
			}
			$res = update_data('tbl_tech', $_POST, $id);
			$res['url'] = $url;
			echo json_encode($res);
			break;
			
		case "update_customer":
			extract($_POST);
		
			unset($_POST['isedit']);
			if ($isedit == 'yes') {
				$url = 'manage_customer';
			} else {
				$url = 'add_customer';
			}
			$res = update_data('tbl_customer', $_POST, $id);
			$res['url'] = $url;
			echo json_encode($res);
			break;
			
		case "update_req":
			extract($_POST);
		
			unset($_POST['isedit']);
			if ($isedit == 'yes') {
				$url = 'manage_request';
			} else {
				$url = 'add_request';
			}
			$res = update_data('tbl_request', $_POST, $id);
			$res['url'] = $url;
			echo json_encode($res);
			break;
			
			
		case "update_medicine":
			extract($_POST);
			unset($_POST['isedit']);
			if ($isedit == 'yes') {
				$url = 'manage_medicine';
			} else {
				$url = 'add_medicine';
			}
			$res = update_data('tbl_medicine', $_POST, $id);
			$res['url'] = $url;
			echo json_encode($res);
			break;
        
        
        case "assign_medicine":
			extract($_POST);
		    $mlist = get_data('tbl_patient', $id, 'medicine_list')['data'];
		    $_POST['doctor_id'] =$user_id;
			if($mlist !='')
			{
			    $mlist = $mlist.",".$medicine_list;
			    $_POST['medicine_list'] = $mlist ;
			}
			$res = update_data('tbl_patient', $_POST, $id);
			$res['url'] = "assign_medicine.php?patient_id=$id";
			echo json_encode($res);
			break;
			
		 case "remove_medicine":
			extract($_REQUEST);
			unset($_REQUEST['task']);
			$mlist = get_data('tbl_patient', $id, 'medicine_list')['data'];
		    $mlist = removeFromString($mlist, $medicine_id);
		    $res = update_data('tbl_patient', array('medicine_list'=>$mlist), $id);
			header("Location:". $_SERVER['HTTP_REFERER']);
			echo json_encode($res);
			break;
			
		case "clear_medicine":
			extract($_GET);
		    $res = update_data('tbl_patient', array('medicine_list'=>'0'), $id);
		    header("Location:". $_SERVER['HTTP_REFERER']);
			echo json_encode($res);
			break;
        
        
		case "confirm_enquiry":
			$enq = get_data('tbl_enquiry', $_GET['id'])['data'];
			$insert = " INSERT into tbl_user (`full_name`,`user_type`, `user_mobile`,`user_name`,`user_email`)  VALUES ( '$name', '$user_type', '$mobile', '$name', '$email' ) ";
			$idata = array('full_name' => $enq['name'], 'user_type' => $enq['user_type'], 'user_mobile' => $enq['mobile'], 'user_email' => $enq['email']);
			extract($idata);
			$res = insert_data('tbl_user', $idata);
			$user_type = array_search(strtoupper($enq['user_type']),  $user_type_list);
			$user_name = 'HL' . $user_type . str_pad($res['id'], 5, "0", STR_PAD_LEFT);
			$pass = rand(100000, 999999);
			$res2 = update_data('tbl_user', array('user_type' => $user_type, 'user_name' => $user_name, 'user_pass' => md5($pass), 'user_otp' => $pass, 'status' => 'ACTIVE'), $res['id']);
			//print_r($res2);
			if ($res2['status'] == 'success') {
				update_data('tbl_enquiry', array('status' => 'CLOSED'), $_GET['id']);
			}
			$sms = $full_name . " thanks for joining as $user_type_list[$user_type] \n Username :" . $user_name . " \nPassword : " . $pass;
			if ($user_email != '') {
				$info = "<table rules='1' align='center' width='70%' cellpadding='5'>";
				foreach ($_POST as $key => $value) {
					$info = $info . "<tr><td>" . addspace($key) . "</td><td>" . $value . "</td></tr>";
				}
				$info = $info . "</table>";
				$email = $ms . "<hr>" . $info;
				rtfmail($user_email, "Hi ! " . $name . " Greetings form " . $inst_name, $email);
			}
			if ($user_mobile != '') {
				//sendsms($user_mobile, $sms);
			}
			//echo json_encode($res);
			header("Location:manage_enquiry.php");
			break;

		default:
			echo "Invalid Action";
	}
}
