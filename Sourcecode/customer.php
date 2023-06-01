<?php
include("header.php");
include("dbconnection.php");
if(isset($_POST[submit]))
{
	if(isset($_GET[editid]))
	{
		$sql="UPDATE customer set customername='$_POST[customername]', dateofbirth='$_POST[date]', customeraddr='$_POST[customeraddress]', mobileno='$_POST[mobilenumber]', loginid='$_POST[loginid]', password='$_POST[password]', emailid='$_POST[emailid]', status='$_POST[status]' WHERE customerid='$_GET[editid]'";
		if(!$qsql=mysqli_query($con,$sql))
		{
			echo mysqli_error($con);
		}
		else
		{
			echo "<script>alert('Customer record updated successfully..');</script>";
		}
	}
		else
		{
		$sql ="INSERT INTO customer(customername, dateofbirth, customeraddr, mobileno, loginid, password, emailid, status) VALUES ('$_POST[customername]','$_POST[date]','$_POST[customeraddress]','$_POST[mobilenumber]','$_POST[loginid]','$_POST[password]','$_POST[emailid]','$_POST[status]')";
		if(!$qsql = mysqli_query($con,$sql))
		{
			echo mysqli_error($con);
		}
		else
		{
			echo "<script>alert('Customer registration done successfully..');</script>";
			echo "<script>window.location='customerlogin.php';</script>";
		}	
		}
	}
	if(isset($_GET[editid]))
	{
		$sql="SELECT * from customer where customerid='$_GET[editid]'";
		$qsql=mysqli_query($con,$sql);
		$rsedit=mysqli_fetch_array($qsql);
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
      <div class="right-column-heading"><h1>Add Customer Record<img src="images/register.jpe" width="150" height="150" alt=""/></h1>
      </div>
      <div class="right-column-content">
      <form method="post" action="" name="frmcustomer" onsubmit="return validateform()">
        <table width="560" height="458" border="3" class="tftable">
          <tbody>
            <tr>
              <th width="253" height="41" scope="row">Customer Name</th>
              <td width="287"><input type="text" name="customername" id="customername" value="<?php echo $rsedit[customername]; ?>" /></td>
            </tr>
            <tr>
              <th height="36" scope="row">Date of birth</th>
              <td><input type="date" name="date" id="date" value="<?php echo $rsedit[date]; ?>" /></td>
            </tr>
            <tr>
              <th height="99" scope="row">Customer Address</th>
              <td><textarea name="customeraddress" id="customeraddress" cols="45" rows="5"><?php echo $rsedit[customeraddr]; ?></textarea></td>
            </tr>
            <tr>
              <th height="34" scope="row">Mobile Number</th>
              <td><input type="text" name="mobilenumber" id="mobilenumber" value="<?php echo $rsedit[mobileno]; ?>" /></td>
            </tr>
            <tr>
              <th height="35" scope="row">Login ID</th>
              <td><input type="text" name="loginid" id="loginid" value="<?php echo $rsedit[loginid]; ?>" /></td>
            </tr>
            <tr>
              <th height="33" scope="row">Password</th>
              <td><input type="password" name="password" id="password" value="<?php echo $rsedit[password]; ?>" /></td>
            </tr>
            <tr>
              <th height="33" scope="row">Confirm Password</th>
              <td><input type="password" name="confirmpassword" id="confirmpassword" value="<?php echo $rsedit[password]; ?>" /></td>
            </tr>
            <tr>
              <th height="38" scope="row">Email ID</th>
              <td><input type="text" name="emailid" id="emailid" value="<?php echo $rsedit[emailid]; ?>" /></td>
            </tr>
            <?php
			if(isset($_SESSION[adminid]))
			{
			?>
            <tr>
              <th height="36" scope="row">Status</th>
              <td><select name="status" id="status">
                <option value="">Select</option>
             	<?php
				$arr=array("Active", "Inactive");
				foreach($arr as $val)
				{
					echo "<option value='$val'>$val</option>";
				}
				?>
              </select></td>
            </tr>
            <?php
			}
			else
			{
			?>
            <input type="hidden" name="status" value="Active" />
            <?php
			}
			?>
            <tr>
              <th height="45" scope="row">&nbsp;</th>
              <td><input type="submit" name="submit" id="submit" value="Register" /></td>
           
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
	if(document.frmcustomer.customername.value == "" && document.frmcustomer.date.value == "" && document.frmcustomer.customeraddress.value == ""  && document.frmcustomer.mobilenumber.value == ""  && document.frmcustomer.loginid.value == "" && document.frmcustomer.password.value == "" )
	{
		alert("Kindly enter all mandatory details..");
		document.frmcustomer.customername.focus();
		return false;	
		
	}
	else if(document.frmcustomer.customername.value == "")
	{
		alert("Please enter customer name");
		document.frmcustomer.customername.focus();
		return false;	
	}
	else if(!document.frmcustomer.customername.value.match(alphaspaceExp))
	{
		alert("Customer name is not valid");
		document.frmcustomer.customername.focus();
		return false;			
	}
	else if(document.frmcustomer.date.value == "")
	{
		alert("Please enter the date");
		document.frmcustomer.date.focus();
		return false;
	}
	else if(document.frmcustomer.customeraddress.value == "")
	{
		alert("please enter address");
		document.frmcustomer.customeraddress.focus();
		return false;
	}
	else if(document.frmcustomer.mobilenumber.value == "") 
	{
		alert("Please enter the mobile number");
		document.frmcustomer.mobilenumber.focus();
		return false;
	}
	else if(!document.frmcustomer.mobilenumber.value.match(numericExpression)) 
	{
		alert("Please enter valid mobile number");
		document.frmcustomer.mobilenumber.focus();
		return false;
	}
	else if(document.frmcustomer.loginid.value == "") 
	{
		alert("Please enter login id");
		document.frmcustomer.loginid.focus();
		return false;
	}
	else if(document.frmcustomer.password.value == "") 
	{
		alert("please enter password");
		document.frmcustomer.password.focus();
		return false;
	}
	else if(document.frmcustomer.password.value.length < 8) 
	{
		alert("Password should be more than 8 characters..");
		document.frmcustomer.password.focus();
		return false;
	}
	else if(document.frmcustomer.confirmpassword.value != document.frmcustomer.password.value) 
	{
		alert("Password and Confirm password should be same..");
		document.frmcustomer.confirmpassword.focus();
		return false;
	}
	else if(document.frmcustomer.emailid.value == "") 
	{
		alert("Please enter emailid");
		document.frmcustomer.emailid.focus();
		return false;
	}
	else if(!document.frmcustomer.emailid.value.match(emailExp))
	{
		alert("Kindly enter valid Email ID...");
		document.frmcustomer.emailid.focus();
		return false;			
	}
	else if(document.frmcustomer.status.value == "") 
	{
		alert("Kindly select status");
		document.frmcustomer.status.focus();
		return false;
	}
	else
	{
		return true;
	}
}
</script>

