<?php
	define('IS_AJAX', isset($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'); 
	if(!IS_AJAX) {die('Restricted access');}
	$email=$_POST['email'];
	$password=$_POST['password'];
	
      require 'conn.php';
   	$query="SELECT * FROM `student_profile` WHERE `email`='$email' && `password`='$password';";
   	$result=mysqli_query($con,$query);
   	$row=mysqli_fetch_row($result);
   	$user=$row[3];
   	$pass=$row[10];
   	if($user==$email && $password==$password){
   		
         echo $row[0];
		die();
   	}
?>