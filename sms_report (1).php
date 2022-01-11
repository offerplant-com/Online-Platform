<?php
require_once('op_lib.php');
$request = $_REQUEST["data"];
$jsonData = json_decode($request,true);
foreach($jsonData as $value)
{
    foreach($value['report'] as $single)
    {
   // $data['sender_id'] =$value['senderId'];
    $data['request_id'] =$value['requestId'];
    $data['mobile'] =$single['number'];
    $data['status'] = $single['desc'];
    $data['delivery_time'] = $single['date'];
    }
   update_data('op_sms', $data,$value['requestId'],'request_id');
}