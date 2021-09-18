<?php
session_start(); 
$CONFIG['token'] = session_id();
ini_set('max_execution_time', 300);
set_time_limit(300);
date_default_timezone_set('Asia/Kolkata');
$CONFIG['today'] =date('Y-m-d');
$CONFIG['current_date_time'] =date('Y-m-d h:i:s');
/*-------Some Basic Details (Global Variables) ---------*/
if(isset($_SESSION['user_id']))
{
	$CONFIG['user_id'] = $_SESSION['user_id'];
}
$CONFIG['full_name'] ="ERPC SERVICES";
$CONFIG['inst_name'] ="Shrishti Enterprises";
$CONFIG['inst_info'] ="By Shrishti Enterprises";
$CONFIG['inst_address1'] ="Rambhrrda Hajipur ";
$CONFIG['inst_address2'] ="Vaishali Bihar - 841401";
$CONFIG['inst_contact'] ="9334315554";
$CONFIG['inst_contact2'] ="";
$CONFIG['inst_email'] ="info@shrishtienterprises.org";
$CONFIG['inst_logo'] ="assets/img/logo.png";
$CONFIG['white_logo'] ="img/white_logo.png";
$CONFIG['banner'] ="assets/img/banner.jpg";
$CONFIG['inst_url'] ="https://shrishtienterprises.org";
$CONFIG['inst_type'] ="SERVICE PROVIDER";
$CONFIG['sender_id'] ="SHRSTI";
$CONFIG['noreply_email'] ="noreply@shrishtienterprises.org";
$CONFIG['auth_key'] ="188195A981rNIY8n1Y5a338b1c";
$CONFIG['base_url'] ='https://shrishtienterprises.org/app/';
$CONFIG['api_key'] ='5546a8eee36769fb0a082bcbca5a66ed'; //APP API ShrishtiEnterPrises
$CONFIG['app_start_date'] ='2021-04-01';
$CONFIG['app_link'] ='https://bit.ly/shrishtienterprises';


$CONFIG['YTAPI_key'] = 'AIzaSyCJoEDAARmX8QHNyc651PdSnvRr66rpJNY'; // YOUTUBE API 
/*---------Social Link ----------*/

$CONFIG['facebook'] ='http://facebook.com/shrishtienterprises.orgin';
$CONFIG['twitter'] ='http://twitter.com/shrishtienterprises.orgin';
$CONFIG['linkedin'] ='';
$CONFIG['youtube'] ='http://youtube.com';
$CONFIG['pinterest'] ='';
$CONFIG['instagram'] ='http://instagram.com/shrishtienterprises.orgin';
$CONFIG['telegram'] ='http://t.me/shrishtienterprises.orgin';


$CONFIG['yt_live'] = 'https://www.youtube.com/embed/live_stream?channel=UCZMZpy3Ak_Y9ckeltZqVx7Q';
$CONFIG['channelId'] = 'UC500odmthCIKPu6R8kmZV2Q'; // Youtube Channel id

$CONFIG['app_name'] ='shrishtienterprises.org 1.0';
$CONFIG['dev_company'] ="OfferPlant Technologies Private Limited";
$CONFIG['dev_by'] ="OfferPlant";
$CONFIG['dev_url'] ="http://offerplant.com";
$CONFIG['dev_email'] ="ask@offerplant.com";
$CONFIG['dev_contact'] ="9431426600";


/* Live Configuration */
$CONFIG['host_name'] ='localhost';
$CONFIG['db_user'] ='shrishti_user';
$CONFIG['db_password'] ='Pass@@2021';
$CONFIG['db_name'] ='shrishti_db';
$CONFIG['base_url'] ='https://shrishtienterprises.org/app/';

$CONFIG['gender_list'] =array('','MALE','FEMALE','OTHER');
$CONFIG['qualification_list'] =array('','Non Matric','Matric','Intermediate','Graduation','Post Graduation' );
$CONFIG['duration_list'] =array(30,45,60,90,120,150);
$CONFIG['answer_list'] =array('','A','B','C','D');

$CONFIG['status_list'] =array('ACTIVE','DEACTIVE'); //'PENDING','FINISH');
$CONFIG['session_list'] =array('2020-2021');
$CONFIG['set_status_list'] =array('PENDING','ACTIVE','BLOCK','FINISH');
$CONFIG['unit_list'] =array('Days','Months','Hours','Years');

	
$CONFIG['month'] = array('April','May','June','July','August','September','October','November','December','January','February','March');


$CONFIG['course_list'] = $student_class_list =array('','I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');

$CONFIG['section_list'] =array('','A','B','C');
$CONFIG['day_list'] =array('','SUN','MON','TUE','WED','THU','FRI','SAT');

$CONFIG['meeting_list'] =array(''=>'Select','gm_code'=>'GOOGLE MEET','zoom_code'=>'ZOOM MEETING','jitsi_code'=>'JITSI MEET',); 

$CONFIG['req_type_list'] = array('Electric','Plumber','CCTV','Solar','Inverter','RO','Other');

/*-------End of Basic Details ---------*/

extract($CONFIG);

?>