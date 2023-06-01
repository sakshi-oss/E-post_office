<?php
error_reporting(0); session_start();
include("header.php");
include("dbconnection.php");
if(isset($_GET[deleteid]))
{
	$sql="Delete from transaction where transactionid='$_GET[deleteid]'";
	$qsql=mysqli_query($con,$sql);
	echo "<script>alert('Record deleted');</script>";
	echo "<script>window.location='viewtransaction.php';</script>";
}


	$sql="SELECT * FROM account WHERE acctype= 'Savings account'";
	$qsql=mysqli_query($con,$sql);
	while($rsarr =mysqli_fetch_array($qsql))
	{
	
		$sqlsbaccounttype="SELECT * FROM sbaccount WHERE sbaccountid = '$rsarr[actypeid]'";
		$qsqlsbaccounttype=mysqli_query($con,$sqlsbaccounttype);
		$rsarrsbaccounttype =mysqli_fetch_array($qsqlsbaccounttype);
	
		$now = time(); // or your date as well
		$acopendt = $rsarr["acopendate"];
     	$your_date = strtotime($acopendt);
    	$datediff = $now - $your_date;
     	$nodays = floor($datediff/(60*60*24));
		$noyear = $nodays/366;
			if($noyear > 21)
			{
				$noyear =21;
			}
			for($yr=1;$yr<=$noyear;$yr++)
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				 $totamt = $totcredit - $totdebit;

				$interest = ($totamt * $rsarrsbaccounttype[interestperyear])/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) < $yr)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$rsarrsbaccounttype[interestperyear]% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
			}
			
	}
	$sql="SELECT * FROM account WHERE acctype='SSA Account'";
	$qsql=mysqli_query($con,$sql);
	while($rsarr =mysqli_fetch_array($qsql))
	{
		$sqlsbaccounttype="SELECT * FROM ssaaccount WHERE ssaccountid = '$rsarr[actypeid]'";
		$qsqlsbaccounttype=mysqli_query($con,$sqlsbaccounttype);
		$rsarrsbaccounttype =mysqli_fetch_array($qsqlsbaccounttype);
		
		$now = time(); // or your date as well
		$acopendt = $rsarr["acopendate"];
     	$your_date = strtotime($acopendt);
    	$datediff = $now - $your_date;
     	$nodays = floor($datediff/(60*60*24));
			$noyear = $nodays/366;
			if($noyear > 21)
			{
				$noyear =21;
			}
			for($yr=1;$yr<=$noyear;$yr++)
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				 $totamt = $totcredit - $totdebit;

				$interest = ($totamt * $rsarrsbaccounttype[interest])/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) < $yr)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$rsarrsbaccounttype[interest]% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
			}
			
	}
	$sql="SELECT * FROM account WHERE acctype='Time deposit'";
	$qsql=mysqli_query($con,$sql);
	while($rsarr =mysqli_fetch_array($qsql))
	{
		$sqlsbaccounttype="SELECT * FROM tdaccount WHERE tdaccount_id = '$rsarr[actypeid]'";
		$qsqlsbaccounttype=mysqli_query($con,$sqlsbaccounttype);
		$rsarrsbaccounttype =mysqli_fetch_array($qsqlsbaccounttype);
		
		$tdnoyears = $rsarr[numofyrs];
		if($tdnoyears == 1)
		{
			$intpercentage = $rsarrsbaccounttype[int1yr];
		}
		else if($tdnoyears == 2)
		{
			$intpercentage = $rsarrsbaccounttype[int2yr];
		}
		else if($tdnoyears == 3)
		{
			$intpercentage = $rsarrsbaccounttype[int3yr];;
		}
		else if($tdnoyears == 5)
		{
			$intpercentage = $rsarrsbaccounttype[int5yr];;
		}
		
		$now = time(); // or your date as well
		$acopendt = $rsarr["acopendate"];
     	$your_date = strtotime($acopendt);
    	$datediff = $now - $your_date;
     	$nodays = floor($datediff/(60*60*24));
			
			if($nodays >=366 )
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				 $totamt = $totcredit - $totdebit;

				$interest = ($totamt * $intpercentage)/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) == 0)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$intpercentage% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
			}
			if($nodays >=732 )
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				 $totamt = $totcredit - $totdebit;

				$interest = ($totamt * $intpercentage)/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) == 1)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$intpercentage% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
			}
			
			if($nodays >=1098 || $nodays >=1464)
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				$totamt = $totcredit - $totdebit;
				$interest = ($totamt * $intpercentage)/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) == 2)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$intpercentage% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
				if(mysqli_num_rows($qsqltransaction1) == 3)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$intpercentage% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
			}
			
			if($nodays >=1830)
			{
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Credit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totcredit = $rstransaction[0];
				
				$sqltransaction ="select COALESCE(SUM(amount),0) from transaction where accountid='$rsarr[accountid]' AND transactiontype='Debit'";
				$qsqltransaction =mysqli_query($con,$sqltransaction);
				$rstransaction =mysqli_fetch_array($qsqltransaction);
				$totdebit = $rstransaction[0];
				
				 $totamt = $totcredit - $totdebit;

				$interest = ($totamt * $intpercentage)/100;
				
				 $sqltransaction1 ="select * from transaction where paymenttype='Interest' AND accountid='$rsarr[accountid]'";
				$qsqltransaction1 =mysqli_query($con,$sqltransaction1);

				if(mysqli_num_rows($qsqltransaction1) == 4)
				{
					$sql ="INSERT INTO transaction(accountid, customerid, transactiontype, amount, transdate,paymenttype, note, status) VALUES ('$rsarr[accountid]','$rsarr[customerid]','Credit','$interest','$dt','Interest','$intpercentage% Interest for $totamt','Active')";
					if(!$qsql = mysqli_query($con,$sql))
					{
						echo mysqli_error($con); 
					}
				}
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
      <div class="right-column-heading"><h2>Transaction</h2>
        <h1>View Transaction Record</h1>
      </div>
      <div class="right-column-content">
      <form method="post" action="">
      <div style='overflow:auto;width:100%'>
        <p>&nbsp;</p>
        <label for="accountno"></label>
        <label for="transactiontype"></label>
        <table width="200" border="1" class="tftable">
          <tr>
            <th scope="col">Account No</th>
            <th scope="col"><select name="accountno" id="accountno">
                         <option value="All">All</option> 
                <?php
				$sqlcust = "SELECT * FROM account WHERE status='Active'";
				if(isset($_SESSION[customerid]))
				{
					$sqlcust=$sqlcust. " AND customerid='$_SESSION[customerid]'";
				}
				$qsqlcust = mysqli_query($con,$sqlcust);
				while($rscust = mysqli_fetch_array($qsqlcust))
					{
						if($rscust[accountid] == $_POST[accountno])
						{
						echo "<option value='$rscust[accountid]' selected>$rscust[accountid] - $rscust[acctype]</option>";
						}
						else
						{
						echo "<option value='$rscust[accountid]'>$rscust[accountid] -  $rscust[acctype]</option>";						
						}
					}
				?>
                </select>
            </select></th>
            <th scope="col"><p> Transaction Type</p></th>
            <th scope="col"><select name="transactiontype" id="transactiontype">
            <option value="All">All</option> 
             <?php
				$arr=array("Credit", "Debit");
				foreach($arr as $val)
				{
					if($val == $_POST[transactiontype])
					{
					echo "<option value='$val' selected>$val</option>";
					}
					else
					{
					echo "<option value='$val'>$val</option>";
					}
				}
				?>
            </select></th>
            <th scope="col"><input type="submit" name="submit" id="submit" value="Submit" /></th>
          </tr>
      </table>
        <p>&nbsp;</p>
        <table width="488" border="1" class="tftable" >
          <tr>
          <?php
		  if(!isset($_SESSION[customerid]))
		  {
            echo ' <th scope="col">Customer</th>';
		  }
		    ?>
            <th scope="col">Transaction Date</th>
            <th scope="col">Transaction Type</th>
            <th scope="col">Account No</th>
            <th scope="col">Amount</th>
            <th scope="col">Note</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
          </tr>
          <?php
		  $sql="select * from transaction WHERE status='Active'";
		  if(isset($_SESSION[customerid]))
		 {
		   $sql = $sql . " AND customerid='$_SESSION[customerid]'";
		 }
		 if($_POST[accountno] != "All")
		 {
		  $sql = $sql . " AND accountid='$_POST[accountno]' ";
		 }
		 if($_POST[transactiontype] != "All")
		 {
			 $sql = $sql . " AND transactiontype='$_POST[transactiontype]'";
		 }
		  $qsql=mysqli_query($con,$sql);
		  while($rs=mysqli_fetch_array($qsql))
		  {
			  $sql3="SELECT * FROM customer WHERE customerid='$rs[customerid]'";
			  $qsql3=mysqli_query($con,$sql3);
			  $rs3=mysqli_fetch_array($qsql3);
          echo "<tr>";
            if(!isset($_SESSION[customerid]))
			{
			echo "<td>&nbsp;$rs3[customername]</td>";
			}
			echo "<td>&nbsp;$rs[transdate]</td>
            <td>&nbsp;$rs[transactiontype]</td>
            <td>&nbsp;$rs[accountid]</td>
            <td>&nbsp;Rs. $rs[amount]</td>
            <td>&nbsp;$rs[note]</td>
            <td>&nbsp;$rs[status]</td>
            <td>&nbsp; <a href='viewtransaction.php?deleteid=$rs[transactionid]' > Delete</a></td>
          </tr>";
		  }
		  ?>
      </table>
        </div>
        <p>&nbsp;</p>
        </form>
        <h1>&nbsp;</h1>
      </div>
    </div>
  </div>
</div>
<?php
include("footer.php");
?>