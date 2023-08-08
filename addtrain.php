
<?php
session_start();
if(isset($_SESSION['name'])){}
	else{
		header("location:login1.php");
		
	}
	
require('firstimport.php');
$tbl_name="train_list";
mysqli_select_db($conn,"$db_name") or die("cannot select db");
$tostn = '';
$fromstn = '';
$doj = '';
if(isset($_POST['Number']) && isset($_POST['Name']))
{	$k=1;
	$Depa = $_POST['Departure'];
	$Arri = $_POST['Arrival'];
	$Num = $_POST['Number'];
	$Name=$_POST['Name'];
	$Ori=$_POST['Origin'];
	$Dest=$_POST['Dest'];
	$oA=$_POST['1A'];
	$tA=$_POST['2A'];
	$thA=$_POST['3A'];
    $AC=$_POST['AC'];
    $CC=$_POST['CC'];
	$SL=$_POST['SL'];
	$Name=strtoupper($Name);
	$Ori=strtoupper($Ori);
	$Dest=strtoupper($Dest);
	$Arri=strtoupper($Arri);
	// $day=date("D",strtotime("".$doj));
	//echo $day."</br>";

	$sql="INSERT INTO `train_list` (`Number`, `Name`, `Origin`, `Destination`, `Arrival`, `Departure`,  `1A`, `2A`, `3A`, `AC`, `CC`, `SL`) VALUES
('$Num', '$Name', '$Ori', '$Dest', '$Arri','$Depa',  '$oA', '$tA', '$thA','$AC', '$CC', '$SL')";
	$result=mysqli_query($conn,$sql);

	
}
else if((!isset($_POST['Name'])) && (!isset($_POST['Number'])))
{	$k=0;
	$from="";
	$to="";
}	
	

?>
<!DOCTYPE html>
<html>
<head>
	<title> Add Train </title>
	<link rel="shortcut icon" href="images/train (3).png"></link>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	</link>
	<link href="css/Default.css" rel="stylesheet">
	</link>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script>
		$(document).ready(function()
		{
			//alert($(window).width());
			var x=(($(window).width())-1024)/2;
			//alert(x);
			$('.wrap').css("left",x+"px");
		});

	</script>
	<!-- <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> -->
	<script type="text/javascript" src="js/man.js"></script>
		
</head>

<body>
	
	<div class="wrap">
		<!-- Header -->
		<div class="header">
			<div style="float:left;width:150px;">
				<img src="images/rlogo.png"/>
			</div>
			<div id="heading">
				<a href="index.php">Railway Booking</a>
			</div>
		</div>
		<!-- Navigation bar -->
		<div class="navbar navbar-inverse" >
			<div class="navbar-inner">
				<div class="container" >
				<a class="brand" href="index1.php" >HOME</a>
				<a class="brand" href="addtrain.php">ADD TRAIN</a>
				<a class="brand" href="findtrain.php">FIND TRAIN</a>
				<a class="brand" href="schedule.php">SCHEDULE TRAIN</a>
				<a class="brand" href="interlist.php">ADD INTERLIST</a>
				</div>
			</div>
		</div>
		
		<!-- registration form -->
		<div align="center">
		<div class="span12 well">
		<div style="font-size:30px;"> Add train</div>
		<br/>
		
		
		<div class="row">
			<!-- find train-->
			<div class="span4 well">
			<form method="post" action="addtrain.php">
			<table class="table">
				<tr>
					<th style="border-top:0px;"><label> Train number <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Number" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Train Name <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Name" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Origin <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Origin" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Destination <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Dest" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Arrival <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Arrival" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Departure <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Departure" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Ticket price for 1A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="1A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>Ticket price for 2A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="2A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> Ticket price for 3A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="3A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>Ticket price for AC <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="AC" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Ticket price for CC <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="CC" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Ticket price for SL <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="SL" id="to1" ></td>
				</tr>
				
					<td style="border-top:0px;"><input class="btn btn-info" type="submit" value="OK"></td>
					<td style="border-top:0px;"><a href="addtrain.php" class="btn btn-info" type="reset" value="Reset">Reset</a></td>
				</tr>
			</table>
			</form>
            <footer >
		    <div style="width:100%;">
			<div style="float:left;">
			<p class="text-right text-info"> DBMS PROJECT</p>	
			</div>
			
		</div>
		</footer>
		</div>

</body>
</html>