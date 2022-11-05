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
$CONFIG['full_name'] ="API SERVICES";
$CONFIG['inst_name'] ="OFFERPLANT TECHNOLOGIES";
$CONFIG['inst_info'] ="By OFFERPLANT TECHNOLOGIES";
$CONFIG['inst_address1'] ="Chapra Saran";
$CONFIG['inst_address2'] ="Bihar - 841301";
$CONFIG['inst_contact'] ="9431426600";
$CONFIG['inst_contact2'] ="";
$CONFIG['inst_email'] ="ask@offerplant.com";
$CONFIG['inst_logo'] ="assets/img/logo.png";
$CONFIG['white_logo'] ="img/white_logo.png";
$CONFIG['banner'] ="assets/img/banner.jpg";
$CONFIG['inst_url'] ="https://offerplant.com";
$CONFIG['inst_type'] ="SERVICE PROVIDER";
$CONFIG['sender_id'] ="OFFSMS";
$CONFIG['noreply_email'] ="noreply@offerplant.com";
$CONFIG['auth_key'] ="188195A981rNIY8n1Y5a338b1c";
$CONFIG['base_url'] ='https://offerplant.com/app/';
$CONFIG['api_key'] =''; // SMS API KEY 
$CONFIG['app_start_date'] ='2021-04-01';
$CONFIG['app_link'] =''; // Play Store or Bit.ly link


$CONFIG['YTAPI_key'] = ''; // YOUTUBE API 
/*---------Social Link ----------*/

$CONFIG['facebook'] ='http://facebook.com/offerplant.comin';
$CONFIG['twitter'] ='http://twitter.com/offerplant.comin';
$CONFIG['linkedin'] ='';
$CONFIG['youtube'] ='http://youtube.com';
$CONFIG['pinterest'] ='';
$CONFIG['instagram'] ='http://instagram.com/offerplant.comin';
$CONFIG['telegram'] ='http://t.me/offerplant.comin';


$CONFIG['yt_live'] = 'https://www.youtube.com/embed/live_stream?channel=UCZMZpy3Ak_Y9ckeltZqVx7Q';
$CONFIG['channelId'] = 'UC500odmthCIKPu6R8kmZV2Q'; // Youtube Channel id

$CONFIG['app_name'] ='offerplant.com 1.0';
$CONFIG['dev_company'] ="OfferPlant Technologies Private Limited";
$CONFIG['dev_by'] ="OfferPlant";
$CONFIG['dev_url'] ="http://offerplant.com";
$CONFIG['dev_email'] ="ask@offerplant.com";
$CONFIG['dev_contact'] ="9431426600";


/* Live Configuration */
$CONFIG['host_name'] ='localhost';
$CONFIG['db_user'] ='morg_all';
$CONFIG['db_password'] ='@All_2001';
$CONFIG['db_name'] ='morg_all';
$CONFIG['base_url'] ='https://morg.in/api/';

$CONFIG['gender_list'] =array('','MALE','FEMALE','OTHER');
$CONFIG['qualification_list'] =array('','Non Matric','Matric','Intermediate','Graduation','Post Graduation' );
$CONFIG['duration_list'] =array(30,45,60,90,120,150);
$CONFIG['answer_list'] =array('','A','B','C','D');

$CONFIG['status_list'] =array('ACTIVE','DEACTIVE'); //'PENDING','FINISH');
$CONFIG['session_list'] =array('2020-2021');
$CONFIG['set_status_list'] =array('PENDING','ACTIVE','BLOCK','FINISH');
$CONFIG['unit_list'] =array('Days','Months','Hours','Years');

	
$CONFIG['month'] = array('April','May','June','July','August','September','October','November','December','January','February','March');


$student_class_list =array('','I','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII');

$CONFIG['section_list'] =array('','A','B','C');
$CONFIG['day_list'] =array('','SUN','MON','TUE','WED','THU','FRI','SAT');

$CONFIG['meeting_list'] =array(''=>'Select','gm_code'=>'GOOGLE MEET','zoom_code'=>'ZOOM MEETING','jitsi_code'=>'JITSI MEET',); 


/*-------End of Basic Details ---------*/

extract($CONFIG);

?>
