<?php
error_reporting(0); session_start();
$dt = date("Y-m-d");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>E-Post Office</title>
<link href='http://fonts.googleapis.com/css?family=Trocchi' rel='stylesheet' type='text/css' />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
.tftable {font-size:12px;color:#FF0000;width:100%;border-width: 1px;border-color: #729ea5;border-collapse: collapse;}
.tftable th {font-size:12px;background-color:#acc8cc;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;text-align:left;}
.tftable tr {background-color:#d4e3e5;}
.tftable td {font-size:12px;border-width: 1px;padding: 8px;border-style: solid;border-color: #729ea5;}
.tftable tr:hover {background-color:#ffffff;color:rgba(209,30,33,1.00);}
</style>
</head>
<body>
<div class="wrapper">
  <div class="logo"><a  target="_Blank"><img src="images/banner.jpg" width="411" height="111" alt=""/></a></div>
  <div class="menu">
    <ul>
      <li><a href="index.php" class="active">Home</a></li>
      <li><a href="about.php">About Us</a></li>
      <?php
    	 if(isset($_SESSION[adminid]))	
         {
			 ?>
      <li><a href="admindashboard.php">Admin Dashboard</a></li>  
      <?php
		 }
		 else
		 {
			 ?>
	   <li><a href="adminlogin.php">Admin Login</a></li>
       <?php
		 }
		 ?>
	  
      <?php
	  if(isset($_SESSION[customerid]))
	  {
	?>
     <li><a href="customerdashboard.php">Customer Dashboard</a></li> 
     <?php
	  }
	  else
	  {
		  ?>
		<li><a href="customer.php">Register</a></li>
      <li><a href="customerlogin.php">Customer Login</a></li>
      <?php
	  }
	  ?>
       <li><a href="contact.php">Contact Us</a></li>
      
	  
    </ul>
</div>