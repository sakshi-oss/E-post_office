<?php
error_reporting(0); session_start();
include("header.php");
include("dbconnection.php");
if(isset($_POST[submit]))
{
	$sql = "SELECT * FROM customer WHERE loginid='$_POST[loginid]' and emailid='$_POST[emailid]'  AND status='Active'";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_num_rows($qsql) == 1)
	{
		$rs = mysqli_fetch_array($qsql);
		$email = $rs[emailid];
		$emailsubject ="Post Office Login credentials";
		$emailmsg = "Dear $rs[customername], Your Login ID is $_POST[loginid] and Password is $rs[password].";

		sendmail($email,$emailsubject,$emailmsg);
		
		echo "<script>alert('Password sent successfully..');</script>";
	//	echo "<script>window.location.assign('index.php');</script>";
	}
	else
	{
		echo "<script>alert('Invalid login id or email entered..');</script>";
	}

}
?>
</div>
<div class="panels-container"></div>
<div class="columns-container">
  <div class="columns-wrapper">
    <?php
	include("leftside.php");
	?>
    <div class="right-column">
      <div class="right-column-heading">
      <p>	<h1>&nbsp;</h1>
        <h1>Forgot Password???</h1>
        </p>
        <h1><img src="images/images(7).jpg" width="193" height="154" alt=""/> </h1>
      </div>
      <div class="right-column-content">
      <form method="post" action="" name="frmpassword" onsubmit="return validateform()">
        <table width="560" height="243" border="3" class="tftable">
          <tbody>
            <tr>
              <th width="253" height="56" scope="row">Login ID</th>
              <td width="287"><input type="text" name="loginid" id="loginid" /></td>
            </tr>
            <tr>
              <th height="57" scope="row">Email-ID</th>
              <td><input type="text" name="emailid" id="emailid" /></td>
            </tr>
            <tr>
              <th height="54" scope="row">&nbsp;</th>
              <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
            </tr>
          </tbody>
        </table>
        </form>
        <h1>&nbsp;</h1>
      </div>
    </div>
  </div>
</div>
<?php
include("footer.php");
?>
<script type="application/javascript">
var alphaExp = /^[a-zA-Z]+$/; //Variable to validate only alphabets
var alphaspaceExp = /^[a-zA-Z\s]+$/; //Variable to validate only alphabets and space
var numericExpression = /^[0-9]+$/; //Variable to validate only numbers
var alphaNumericExp = /^[0-9a-zA-Z]+$/; //Variable to validate numbers and alphabets
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/; //Variable to validate Email ID 
var decimalExpression= /^\s*-?[1-9]\d*(\.\d{1,2})?\s*$/;   

function validateform()
{	
	if(document.frmpassword.loginid.value == "" && document.frmpassword.emailid.value == "")
	{
		alert("Kindly enter all mandatory details..");
		document.frmpassword.loginid.focus();
		return false;	
		
	}
	else if(document.frmpassword.loginid.value == "")
	{
		alert("Please enter login id");
		document.frmpassword.loginid.focus();
		return false;	
	}
	else if(document.frmpassword.emailid.value == "")
	{
		alert("Please enter email id");
		document.frmpassword.emailid.focus();
		return false;	
	}
	else if(!document.frmpassword.emailid.value.match(emailExp))
	{
		alert("Email is not valid");
		document.frmpassword.emailid.focus();
		return false;			
	}
}
	</script>
<?php
function sendmail($toaddress,$subject,$message)
{
	require 'PHPMailer-master/PHPMailerAutoload.php';
	
	$mail = new PHPMailer;
	
	//$mail->SMTPDebug = 3;                               // Enable verbose debug output
	
	$mail->isSMTP();                                      // Set mailer to use SMTP
	$mail->Host = 'mail.dentaldiary.in';  // Specify main and backup SMTP servers
	$mail->SMTPAuth = true;                               // Enable SMTP authentication
	$mail->Username = 'sendmail@dentaldiary.in';                 // SMTP username
	$mail->Password = 'q1w2e3r4/';                           // SMTP password
	$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
	$mail->Port = 587;                                    // TCP port to connect to
	
	$mail->From = 'sendmail@dentaldiary.in';
	$mail->FromName = 'Post Office';
	$mail->addAddress($toaddress, 'Joe User');     // Add a recipient
	$mail->addAddress($toaddress);               // Name is optional
	$mail->addReplyTo('aravinda@technopulse.in', 'Information');
	$mail->addCC('cc@example.com');
	$mail->addBCC('bcc@example.com');
	
	$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
	$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
	$mail->isHTML(true);                                  // Set email format to HTML
	
	$mail->Subject = $subject;
	$mail->Body    = $message;
	$mail->AltBody = $subject;
	
	if(!$mail->send()) {
		echo 'Message could not be sent.';
		echo 'Mailer Error: ' . $mail->ErrorInfo;
	} else {
		echo '<center><strong><font color=green>Login credentails sent to your Email ID.</font></strong></center>';
	}
}
?>    