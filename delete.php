<?php
session_start();
require('firstimport.php');
if(!isset($_SESSION['name'])){
	header("location:display.php");
}
$tbl_name="booking";

mysqli_select_db($conn,"$db_name") or die("cannot select db");
$Tnumber=$_GET['Tnumber']; 
$doj= $_GET['doj']; 
 $Name=$_GET['Name'];
 $Age=$_GET['Age'];
$Sex=$_GET['Sex']; 
   $Status=$_GET['Status'];
   $DOB=$_GET['DOB'];  
   $class=$_GET['class'];

   $sql="DELETE FROM booking where Tnumber='".$Tnumber."'and class='".$class."' and doj='".$doj."' and DOB='".$DOB."' and Name= '".$Name."' and Age='".$Age."' and Sex='".$Sex."' and Status='".$Status."' ";
   $sql1="SELECT ".$class." from seats_availability where Train_No='".$Tnumber."' and doj='".$doj."'";
   $result1=$conn->query($sql1);
   while($row1=mysqli_fetch_array($result1)){
		$value=$row1["".$class];
}
	$value+=1;
$sql2="UPDATE seats_availability SET ".$class."=".$value." WHERE doj='".$doj."' and Train_No=".$Tnumber."";
	$result2=$conn->query($sql2);
	echo "</br>".$sql2."</br>";
	if(!$result2) die ($conn->error);
	
	$result=$conn->query($sql);
	echo "$sql</br>";
	if($result){ header("location:display.php?tno='$Tnumber'&& doj='$doj'&& seat='$class'");}else{ die ($conn->error);}
?>