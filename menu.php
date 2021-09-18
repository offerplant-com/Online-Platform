<?php
if (isset($_SESSION['user_id'])) {
	$user_id = $_SESSION['user_id'];
	$user_type = $_SESSION['user_type'];
	$user_name = $_SESSION['user_name'];
	$ut = get_data('tbl_user', $user_id, 'token')['data'];
    //echo  $token;
	//echo "<br>" . $user_type;
	//die();

	if ($token != $ut) {
		echo "<script>window.location ='master_process.php?task=logout&rtype=url' </script>";
	}
} else {
	echo "<script> window.location ='login' </script>";
}
//verify($user_type);
?>

<body class="bg-light">

	<nav class="navbar navbar-expand navbar-dark bg-primary">
		<a class="sidebar-toggle mr-3" href="#"><i class="fa fa-bars"></i></a>
		<a class="navbar-brand" href="index"><?php echo strtoupper($inst_name); ?></a>

		<div class="navbar-collapse collapse">
			<ul class="navbar-nav ml-auto">

			</ul>
		</div>
	</nav>

	<div class="d-flex">
		<div class="sidebar sidebar-dark bg-dark">

			<ul class="list-unstyled">
				<li>
					<a href="index" accesskey='d'><i class="fa fa-dashboard fa-fw"></i> Welcome <span class='badge badge-success'> <?php echo  $user_name; ?> </span></a>
				</li>

			
					<li><a href="manage_tech"> <i class="fa fa-tv fa-fw"></i> Technician </a></li>
					<li><a href="manage_customer"> <i class="fa fa-male fa-fw"></i> Customer</a></li>
					
					<li><a href="manage_request"> <i class="fa fa-pencil fa-fw"></i> Requests </a></li>
				

				<li><a href="change_password.php"><i class="fa fa-key fa-fw"></i> Change Password</a></li>
				<li><a href="#" onClick='logout()' accesskey='l'><i class="fa fa-sign-out fa-fw"></i> <u>L</u>ogout </a>
				</li>
			</ul>
			<!--<h3 class='text-light m-4'> Shortcuts </h3>-->
			<!--<ul class="list-unstyled m-2 text-light">-->
			<!--	<li class='m-2'> <kbd> Ctrl+A </kbd> Select All Checkbox </li>-->
			<!--	<li class='m-2'> <kbd> Ctrl+A </kbd> Select All Checkbox </li>-->

			<!--</ul>-->

		</div>