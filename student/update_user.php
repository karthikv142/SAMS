<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'conn.php';
	$sid=$_POST['sid'];
	$name=$_POST['name'];
	$email=$_POST['email'];
	$dob=$_POST['dob'];
	$address=$_POST['address'];
	$mobile=$_POST['mobile'];

	$update="UPDATE `student_profile` SET `name`='$name',`email`='$email',`mobile`='$mobile',`dob`='$dob',`address`='$address' WHERE `sid`='$sid'";
	$update_query=mysqli_query($con,$update);

	$query="SELECT * FROM `student_profile` WHERE sid ='$sid'";
	$result=mysqli_query($con,$query);
	$json_data=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);
?>