<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'conn.php';
	$pid=$_POST['pid'];
	$name=$_POST['name'];
	$email=$_POST['email'];
	$dob=$_POST['dob'];
	$address=$_POST['address'];
	$mobile=$_POST['mobile'];

	$update="UPDATE `principal_profile` SET `name`='$name',`email`='$email',`mobile`='$mobile',`dob`='$dob',`address`='$address' WHERE `pid`='$pid'";
	$update_query=mysqli_query($con,$update);

	$query="SELECT * FROM `principal_profile` WHERE pid ='$pid'";
	$result=mysqli_query($con,$query);
	$json_data=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);
?>