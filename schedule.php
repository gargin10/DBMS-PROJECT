
<?php
session_start();
if(isset($_SESSION['name'])){}
	else{
		header("location:login1.php");
		
	}
	
require('firstimport.php');

$tbl_name="interlist";
mysqli_select_db($conn,"$db_name") or die("cannot select db");
$tostn = '';
$fromstn = '';
$doj = '';
if(isset($_POST['Number']) && isset($_POST['Name']))
{	
	$Month=$_POST['Month'];
	$Num = $_POST['Number'];
	$Name=$_POST['Name'];
	$oA=$_POST['1A'];
	$tA=$_POST['2A'];
	$thA=$_POST['3A'];
	$SL=$_POST['SL'];
	$AC=$_POST['AC']; $CC=$_POST['CC'];
	$Name=strtoupper($Name);
	
$year = 2023;
$month = $Month;

// Get the number of days in the month
$num_days = cal_days_in_month(CAL_GREGORIAN, $month, $year);

// Loop through each day in the month
for ($day = 1; $day <= $num_days; $day++) {
    // Get the timestamp for the current day
    $timestamp = strtotime("$year-$month-$day");
    
    // Get the name of the day (e.g. "Mon", "Tue") for the current day
    $day_name = date("D", $timestamp);
    $sql1="SELECT * from interlist where ($day_name ='Y') and Number='".$Num."' ";
$result1=$conn->query($sql1);
    $date=sprintf("%04d-%02d-%02d", $year, $month, $day);
	

while($row1=mysqli_fetch_array($result1)){
	
	$tbl_name1="seats_availability";
	 $sql="INSERT INTO $tbl_name1(Train_No, Train_Name, doj, 1A, 2A, 3A, AC, CC, SL) VALUES ('$Num','$Name','$date','$oA','$tA','$thA','$AC','$CC','$SL')";
	$result=mysqli_query($conn,$sql);
	
	if(!$result) die ($conn->error);
		// $value=$row1["".$seat];
}
}

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
	<title> Schedule Train </title>
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
		<div style="font-size:30px;"> Schedule train</div>
		<br/>
		
		
		<div class="row">
			<!-- find train-->
			<div class="span4 well">
			<form method="post" action="schedule.php">
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
					<th style="border-top:0px;" ><label > Month Number <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Month" id="to1" ></td>
				</tr>
				
					<th style="border-top:0px;"><label> Number of seats for 1A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="1A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>2A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="2A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> 3A <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="3A" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>SL <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="SL" id="to1" ></td>
				</tr>
				
				<tr>
					<th style="border-top:0px;"><label>CC <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="CC" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>AC <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="AC" id="to1" ></td>
				</tr>
					<td style="border-top:0px;"><input class="btn btn-info" type="submit" value="OK"></td>
					<td style="border-top:0px;"><a href="addtrain.php" class="btn btn-info" type="reset" value="Reset">Reset</a></td>
				</tr>
			</table>
			</form>
            <footer >
		      <div style="width:100%;">
			    <div style="float:right;">
			    <p class="text-right text-info">DBMS PROJECT</p>
			    </div>
		     </div>
		    </footer>
		</div>

</body>
</html>