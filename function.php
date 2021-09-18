<?php
require_once('op_lib.php');
function invopen($customer_id)
{
	global $con;
	global $user_id;
	//$invoice = get_all('invoice','*',array('status'=>'OPEN','center_code'=>$center_code));
	$invoice  = direct_sql("select * from op_sale where status='OPEN' and customer_id  ='$customer_id' order by id desc limit 1");
	if ($invoice['count'] == 0) {
		$inv_data = array('customer_id' => $customer_id, 'inv_date' => date('Y-m-d'), 'status' => 'OPEN');
		$res = insert_data('op_sale', $inv_data);
		$result['id'] = $res['id'];
		$result['inv_date'] = date('Y-m-d');
		$result['status'] = 'NEW';
		$_SESSION['sale_id'] = $res['id'];
	} else {
		$inv_data  = $invoice['data'][0];
		$result['id'] = $inv_data['id'];
		$result['inv_date'] = $inv_data['inv_date'];
		$result['status'] = 'EXISTING';
	}
	return $result;
}

function productlist()
{
	$all_product = get_all('op_product', '*', array('status' => 1))['data'];
	//echo "<select name='product_id' required class='form-control' id='product_entry'>";
	foreach ($all_product as $product) {
		$stock = getstock($product['product_id']);
		$brand = get_data('op_brand', $product['brand_id'], 'brand_name')['data'];
		echo "<option value ='" . $product['product_id'] . "'>" . $brand . " - " . $product['product_name'] . " [" . $product['product_current_stock'] . "]</option>";
	}
	//echo "</select>";
}


function openPurchaseInv()
{
	global $con;
	$invoice  = direct_sql("select * from op_purchase where status='0' and inv_type not in('duplicate') order by purchase_id desc limit 1");
	if ($invoice['count'] == 0) {
		$inv_data = array('vendor_id' => 0, 'inv_date' => date('Y-m-d'), 'status' => 0);
		$res = insert_data('op_purchase', $inv_data);
		$result['id'] = $res['id'];
		$result['status'] = 'NEW';
		$_SESSION['purchase_id'] = $res['id'];
	} else {
		$inv_data  = $invoice['data'][0];
		$result['id'] = $inv_data['purchase_id'];
		$result['status'] = 'EXISTING';
	}
	return $result;
}
function searchPurInv($inv_no)
{
	global $con;
	//$invoice = get_all('invoice','*',array('status'=>'OPEN','center_code'=>$center_code));
	$invoice  = direct_sql("select * from op_purchase where inv_no='$inv_no' and status in('0','1') and inv_type in ('new','duplicate') order by purchase_id desc limit 1");
	if ($invoice['count'] > 0) {
		return $invoice['data'][0];
	} else {
		return false;
	}
}

function pendingInv()
{
	global $con;
	//$invoice = get_all('invoice','*',array('status'=>'OPEN','center_code'=>$center_code));
	$invoice  = direct_sql("select * from op_sale where status='0' and inv_type='duplicate' order by sale_id desc limit 1");
	if ($invoice['count'] > 0) {
		$inv_data  = $invoice['data'][0];
		$result['id'] = $inv_data['sale_id'];
		$result['status'] = 'EXISTING';
		return $result;
	} else {
		return false;
	}
}
function pendingPurchaseInv()
{
	global $con;
	//$invoice = get_all('invoice','*',array('status'=>'OPEN','center_code'=>$center_code));
	$invoice  = direct_sql("select * from op_purchase where status='0' and inv_type in('new','duplicate') order by purchase_id desc limit 1") or die("Error to generate pending invoice in purchase return " . mysqli_error($con));
	if ($invoice['count'] > 0) {
		$inv_data  = $invoice['data'][0];
		$result['id'] = $inv_data['purchase_id'];
		$result['status'] = 'EXISTING';
		return $result;
	} else {
		$dt = date('Y-m-d');
		$arr = array('inv_type' => 'new', 'status' => 0, 'created_at' => $dt, 'created_by' => $_SESSION['user_id']);
		$res = insert_data('op_purchase', $arr);
		$result['id'] = $res['id'];
		$result['status'] = 'EXISTING';
		return $result;
	}
}
function ingst($mrp, $gstper)
{
	$gstper = 1 + ($gstper / 100);
	$product_cost = $mrp / $gstper;
	$gst_amt =  $mrp - $product_cost;
	$data['igst'] = round($gst_amt, 2);
	$data['cgst'] = $data['sgst'] = round($gst_amt / 2);
	$data['price'] = round($product_cost, 2);
	return $data;
}

function exgst($mrp, $gstper)
{

	$gst_amt = ($mrp * $gstper) / 100;
	$data['igst'] = round($gst_amt, 2);
	$data['cgst'] = $data['sgst'] = round($gst_amt / 2);
	$data['price'] = $mrp;
	return $data;
}

function invoicecost($sale_id)
{
	$t_amt = 0;
	$sold_item  = get_all('op_sale_item', '*', array('sale_id' => $sale_id))['data'];
	$item_ct  = get_all('op_sale_item', '*', array('sale_id' => $sale_id))['count'];
	if ($item_ct >= 1) {
		foreach ($sold_item as $item) {
			$txn_id = $item['txn_id'];
			$product_id = $item['product_id'];
			$qty = $item['product_qty'];
			$p_rate = get_data('op_purchase_item', $product_id, 'product_rate', 'product_id')['data'];

			$amt = $p_rate * $qty;
			$t_amt = $t_amt + $amt;
		}
	}
	return $t_amt;
}
function checkCustomerMobile($mobile)
{
	global $con;
	$sql = "SELECT * FROM op_customer where customer_mobile ='$mobile' ";
	$res = mysqli_query($con, $sql) or die(" Customer Mobile  Error : " . mysqli_error($con));
	//echo mysqli_num_rows($res);
	if (mysqli_num_rows($res) > 0) {
		$row = mysqli_fetch_assoc($res);
		$_SESSION['selected_customer'] = $row['customer_id'];
		return true;
	} else {
		return false;
	}
}

/*-----------RETURN DETAILS -------------*/

function productqty($sale_id, $product_id)
{
	$return_item = 0;
	$sale_item = get_multi_data('op_sale_item', array('sale_id' => $sale_id, 'product_id' => $product_id, 'txn_type' => 'SALE'))['data'][0]['product_qty'];

	$sql = "select sum(product_qty) as ct from op_sale_item where sale_id ='$sale_id' and product_id='$product_id' and txn_type='RETURN'";

	$return_item = direct_sql($sql)['data'][0]['ct'];

	$stock = $sale_item - $return_item;
	return $stock;
}

function purchaseqty($purchase_id, $product_id)
{
	$return_item = 0;
	$sale_item = get_multi_data('op_purchase_item', array('purchase_id' => $purchase_id, 'product_id' => $product_id, 'txn_type' => 'PURCHASE'))['data'][0]['product_qty'];

	$sql = "select sum(product_qty) as ct from op_purchase_item where purchase_id ='$purchase_id' and product_id='$product_id' and txn_type='RETURN'";

	$return_item = direct_sql($sql)['data'][0]['ct'];

	$stock = $sale_item - $return_item;
	return $stock;
}


function productplus($product_id, $qty = 0)
{
	$old_qty = get_data('op_product', $product_id, 'product_current_stock', 'product_id')['data'];
	$new_qty = $old_qty + $qty;
	$res = update_data('op_product', array('product_current_stock' => $new_qty), $product_id, 'product_id');
	if ($res['status'] == 'success') {
		$res['id'] = $product_id;
		$res['status'] = 'success';
		$res['data'] = $new_qty;
	}
	return $res;
}

function productminus($product_id, $qty = 0)
{
	$old_qty = get_data('op_product', $product_id, 'product_current_stock', 'product_id')['data'];
	$new_qty = $old_qty - $qty;
	$res = update_data('op_product', array('product_current_stock' => $new_qty), $product_id, 'product_id');
	if ($res['status'] == 'success') {
		$res['id'] = $product_id;
		$res['status'] = 'success';
		$res['data'] = $new_qty;
	}
	return $res;
}

function cbalplus($customer_id, $bal)
{
	$old_bal = get_data('op_customer', $customer_id, 'customer_balance', 'customer_id')['data'];
	$new_bal = $old_bal + $bal;
	$res = update_data('op_customer', array('customer_balance' => $new_bal), $customer_id, 'customer_id');
	if ($res['status'] == 'success') {
		$res['id'] = $customer_id;
		$res['status'] = 'success';
		$res['data'] = $new_bal;
	}
	return $res;
}

function cbalminus($customer_id, $bal)
{
	$old_bal = get_data('op_customer', $customer_id, 'customer_balance', 'customer_id')['data'];
	$new_bal = $old_bal - $bal;
	$res = update_data('op_customer', array('customer_balance' => $new_bal), $customer_id, 'customer_id');
	if ($res['status'] == 'success') {
		$res['id'] = $customer_id;
		$res['status'] = 'success';
		$res['data'] = $new_bal;
	}
	return $res;
}

function getstock($product_id)
{
	$os = $tp = $tpr = $ts = $tsr = 0;
	$os = get_data('op_product', $product_id, 'opening_stock', 'product_id')['data'];


	// TOTAL PURCHASE 
	$psql = "select sum(product_qty) from op_purchase_item where product_id ='$product_id' and txn_type ='PURCHASE'";
	$pres = direct_sql($psql);
	if ($pres['data'][0]['sum(product_qty)'] != '') {
		$tp = $pres['data'][0]['sum(product_qty)'];
	}
	// TOTAL PURCHASE RETURN
	$prsql = "select sum(product_qty) from op_purchase_item where product_id ='$product_id' and txn_type ='RETURN'";
	$prres = direct_sql($prsql);
	if ($prres['data'][0]['sum(product_qty)'] != '') {
		$tpr = $prres['data'][0]['sum(product_qty)'];
	}

	// TOTAL SALE 
	$ssql = "select sum(product_qty) from op_sale_item where product_id ='$product_id' and txn_type ='SALE'";
	$sres = direct_sql($ssql);
	if ($sres['data'][0]['sum(product_qty)'] != '') {
		$ts = $sres['data'][0]['sum(product_qty)'];
	}
	// TOTAL SALE RETURN 
	$srsql = "select sum(product_qty) from op_sale_item where product_id ='$product_id' and txn_type ='RETURN'";
	$srres = direct_sql($srsql);
	if ($srres['data'][0]['sum(product_qty)'] != '') {
		$tsr = $srres['data'][0]['sum(product_qty)'];
	}

	$data['total_purchase'] = $tp;
	$data['purchase_return'] = $tpr;
	$data['total_sale'] = $ts;
	$data['sale_return'] = $tsr;
	$data['net_purchase'] = $np = $tp - $tpr;
	$data['net_sale'] = $ns = $ts - $tsr;

	$data['current_stock'] = ($os + $np) - $ns;

	return $data;
}

function expiry($date1) // service Start Date
{
	$date = date_create($date1);
	date_add($date, date_interval_create_from_date_string("365 days"));
	$date2 = date_format($date, "Y-m-d");
	$cdate = date('Y-m-d');
	$date1 = date_create($cdate);
	$date2 = date_create($date2);
	$diff = date_diff($date1, $date2);
	return $diff->format("%a days");
}
	//print_r(exgst(100,18));
	
	
function removeFromString($str, $item) {
    $parts = explode(',', $str);

    while(($i = array_search($item, $parts)) !== false) {
        unset($parts[$i]);
    }
    return implode(',', $parts);
}
