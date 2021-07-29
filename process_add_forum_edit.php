<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<body>
<?php

	/*** Connect ***/
	include('connect.php');
 
 

	include('connect.php');
	date_default_timezone_set("Asia/Bangkok");
	$Num_ID = $_POST["Num_ID"];
	$FR_ID = $_POST["FR_ID"];
// $Date_Time = $_POST["Date_Time"];
$Date_Time = date("Y-m-d h:i:sa");
$LName = $_POST["LName"];
$LMessage = $_POST["LMessage"];
$Cusname = $_POST["Customer_name"];
$Service = $_POST["Service"];
// echo $Date_Time;
// echo $Num_ID.$FR_ID.$Date_Time.$LName.$LMessage.$Cusname.$Service;
if($Service == "BCP")
{
	$sql = "UPDATE forum_bcp SET 
	Message_Log = '".$LMessage."',
	Name_Log = '".$LName."'
	WHERE FR_ID = '".$FR_ID."' ";
	
}
elseif($Service == "MNSP")
{
	$sql = "UPDATE forum_mnsp SET 
	Message_Log = '".$LMessage."',
	Name_Log = '".$LName."'
	WHERE FR_ID = '".$FR_ID."' ";
}
elseif($Service == "PM")
{
	$sql = "UPDATE forum_pm SET 
	Message_Log = '".$LMessage."',
	Name_Log = '".$LName."'
	WHERE FR_ID = '".$FR_ID."' ";
}
elseif($Service == "Report")
{
	$sql = "UPDATE forum_report SET 
	Message_Log = '".$LMessage."',
	Name_Log = '".$LName."'
	WHERE FR_ID = '".$FR_ID."' ";
}


$query = mysqli_query($conn,$sql);

// $sql = "INSERT INTO forum_BCP (Num_ID, Date_Time, Message_Log, Name_Log,Customer_name) 
// 		VALUES ('".$Num_ID."','".$Date_Time."','".$LMessage."','".$LName."','".$Cusname."')";

// $query = mysqli_query($conn,$sql); 

if($query) {

echo "Record add successfully"."<br>";
echo '<a href="forum'.$Service.'.php?Num_ID='.$Num_ID.'" >Go to Home</a>';

}else {
	echo "MySQL Connect Failed : Error : ".mysqli_error($conn);
}

mysqli_close($conn);


?>


</body>
</HTML>