<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'conn.php';
	$hid=$_POST['hid'];
	$name=$_POST['name'];
	$email=$_POST['email'];
	$mobile=$_POST['mobile'];
	$address=$_POST['address'];
	$dob=$_POST['dob'];
	

	$update="UPDATE `hod_profile` SET `name`='$name',`email`='$email',`mobile`='$mobile',`address`='$address',`dob`='$dob' WHERE `hid`='$hid'";
	$update_query=mysqli_query($con,$update);

	$query="SELECT * FROM `hod_profile` WHERE hid ='$hid'";
	$result=mysqli_query($con,$query);
	$json_data=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);
?>