<?php

define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}

	include 'conn.php';
	$eid=$_POST['eid'];
	$branch=$_POST['branch'];
	$sem=$_POST['sem'];
	$query="SELECT * FROM `faculty_map` WHERE eid ='$eid' and branch='$branch' and sem='$sem' ";
	$result=mysqli_query($con,$query);
	$json_data=array();
	while($row=mysqli_fetch_assoc($result)){
		$json_data[]=$row;
	}
	
	echo json_encode($json_data);

?>