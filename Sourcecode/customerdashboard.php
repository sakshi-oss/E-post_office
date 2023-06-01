<?php
error_reporting(0); session_start();
include("dbconnection.php");
if(!isset($_SESSION[customerid]))
{
	header("Location: customerlogin.php");
}
include("header.php");
?>

<div class="columns-container">
  <div class="columns-wrapper">
    <?php
	include("leftside.php");
	?>
    <div class="right-column">
      <div class="right-column-heading">
        <h1>&nbsp;</h1>
        <h1>Customer Dashboard</h1>
      </div>
      <div class="right-column-content">
        <h1>Number of Accounts : 
        <?php
		$sql = "SELECT * FROM account";
		$qsql = mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql);
		?>
        </h1>
        <a href="viewaccount.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Bills Payed:
        <?php
		$sql="SELECT * FROM billpayment";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewbillpayment.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Consignments:
        <?php
		$sql="SELECT * FROM consignment";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewconsignment.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Insurances Policies:
        <?php
		$sql="SELECT * FROM insurance";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewinsuranceaccount.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Payed Insuraces:
        <?php
		$sql="SELECT * FROM insurance_payment";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewinsurancepayment.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Money Order:
        <?php
		$sql="SELECT * FROM moneyorder";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewmoneyorder.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of RD Account:
        <?php
		$sql="SELECT * FROM rdaccount";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewrdaccount.php" class="more-button">View More </a>
      </div>
       <div class="right-column-content">
        <h1>Number of SB Account:
        <?php
		$sql="SELECT * FROM sbaccount";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewsavingbankaccount.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of SB Account:
        <?php
		$sql="SELECT * FROM sbaccount";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewsavingbankaccount.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of SSA Account:
        <?php
		$sql="SELECT * FROM ssaaccount";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewssaaccount.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of TD Account:
        <?php
		$sql="SELECT * FROM tdaccount";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewtdaccount.php" class="more-button">View More </a>
      </div>
       <div class="right-column-content">
        <h1>Number of Translation:
        <?php
		$sql="SELECT * FROM transaction";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewtransaction.php" class="more-button">View More </a>
      </div>
      <div class="right-column-content">
        <h1>Number of Tracking Records:
        <?php
		$sql="SELECT * FROM tracking";
		$qsql=mysqli_query($con,$sql);
		echo mysqli_num_rows($qsql)
		?>
        </h1>
        <a href="viewconsignment.php" class="more-button">View More </a>
      </div>
      </div>
  </div>
</div>
<?php
include("footer.php");
?>