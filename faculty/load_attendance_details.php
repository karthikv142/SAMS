<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'conn.php';
	$eid=$_POST['eid'];
	$branch=$_POST['branch'];
	$sem=$_POST['sem'];
	$section=$_POST['section'];
	$subject=$_POST['subject'];
	$date=$_POST['date'];
	$branch=$_POST['branch'];
	$slot=$_POST['slot'];
	$ex_att_id=$_POST['ex_att_id'];

	$query="INSERT INTO `attendance_details`(`eid`,`ex_att_id`, `branch`, `sem`, `section`, `subject`, `date`, `slot`) VALUES ('$eid','$ex_att_id','$branch','$sem','$section','$subject','$date','$slot')";
	$result=mysqli_query($con,$query);

	$queryo="SELECT * FROM `student_profile` WHERE `branch`='$branch' AND `semester`='$sem' AND `section`='$section' ";
	$resulto=mysqli_query($con,$queryo);

	$json_data=array();
	while($row=mysqli_fetch_assoc($resulto)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);

?>