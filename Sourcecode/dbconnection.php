<?php
$con=mysqli_connect("localhost","root","","postoffice");

// Check connection
if (mysqli_connect_errno($con))
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

?>