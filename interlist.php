
<?php
session_start();
if(isset($_SESSION['name'])){
    {
        
    }
}
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
{	$k=1;
	// $Depa = $_POST['Departure'];
	// $Arri = $_POST['Arrival'];
	$Num = $_POST['Number'];
    $st1=$_POST['st1'];
    $st2=$_POST['st2'];
    $st3=$_POST['st3'];
    $st4=$_POST['st4'];
    $st5=$_POST['st5'];
    $st1arri=$_POST['st1arri'];
    $st2arri=$_POST['st2arri'];
    $st3arri=$_POST['st3arri'];
    $st4arri=$_POST['st4arri'];
    $st5arri=$_POST['st5arri'];
	$Name=$_POST['Name'];
	$Ori=$_POST['Ori'];
    $Oriarri=$_POST['Oriarri'];
	$Dest=$_POST['Dest'];
    $Desarri=$_POST['Desarri'];
 $Mon=$_POST['Mon'];
 $Tue=$_POST['Tue'];
 $Wed=$_POST['Wed'];
 $Thu=$_POST['Thu'];
 $Fri=$_POST['Fri'];
 $Sat=$_POST['Sat'];
 $Sun=$_POST['Sun'];
 $Name=strtoupper($Name);
	$Ori=strtoupper($Ori);
    $st1=strtoupper($st1);
     $st2=strtoupper($st2);
      $st3=strtoupper($st3);
       $st4=strtoupper($st4);
        $st5=strtoupper($st5);
	$Dest=strtoupper($Dest);

	$g=2;
	$l=1;
	$t=3;
	// $day=date("D",strtotime("".$doj));
	//echo $day."</br>";
 $sql= "INSERT INTO `interlist` (`Number`, `st1`, `st1arri`, `st2`, `st2arri`, `st3`, `st3arri`, `st4`, `st4arri`, `st5`, `st5arri`, `Ori`, `Oriarri`, `Dest`, `Desarri`, `Name`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`) VALUES
('$Num', '$st1', '$st1arri', '$st2', '$st2arri', '$st3', '$st3arri', '$st4', '$st4arri', '$st5', '$st5arri', '$Ori', '$Oriarri', '$Dest', '$Desarri', '$Name', '$Mon', '$Tue', '$Wed', '$Thu', '$Fri', '$Sat', '$Sun')";
	
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
	<title> Add Interlist </title>
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
		<div style="font-size:30px;"> Add Interlist</div>
		<br/>
		
		
		<div class="row">
			<!-- find train with qouta-->
			<div class="span4 well">
			<form method="post" action="interlist.php">
			<table class="table">
				<tr>
                    '
	
					<th style="border-top:0px;"><label> train Number <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Number" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st1 <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="st1" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st1arri <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="st1arri" id="fr" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st2 <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="st2" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st2arri <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="st2arri" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st3 <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="st3" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st3arri<label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="st3arri" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>st4<label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="st4" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label> st4arri <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="st4arri" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>st5 <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="st5" id="to1" ></td>
				</tr>
				<tr>
					<th style="border-top:0px;"><label>st5arri <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="st5arri" id="to1" ></td>
				</tr>
                
				<tr>
					<th style="border-top:0px;"><label>Ori <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Ori" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Oriarrival <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="Oriarri" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Desti <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Dest" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Destarri <label></th>
					<td style="border-top:0px;"><input type="text" placeholder="HH:MM" class="input-block-level" name="Desarri" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Name of train <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Name" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Mon <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Mon" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;" ><label>Tues <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="Tue" id="to1" placeholder="Y/N" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Wed <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Wed" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Thu <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Thu" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Fri <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Fri" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Sat <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Sat" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>Sun <label></th>
					<td style="border-top:0px;"><input placeholder="Y/N" type="text" class="input-block-level" name="Sun" id="to1" ></td>
				</tr>
                <tr>
					<th style="border-top:0px;"><label>st5arri <label></th>
					<td style="border-top:0px;"><input type="text" class="input-block-level" name="SL" id="to1" ></td>
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