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
// $Date_Time = $_POST["Date_Time"];
$Date_Time = date("Y-m-d h:i:sa");
$LName = $_POST["LName"];
$LMessage = $_POST["LMessage"];
$Cusname = $_POST["Customer_name"];
// echo $Date_Time;





$sql = "INSERT INTO forum_report (Num_ID, Date_Time, Message_Log, Name_Log,Customer_name) 
		VALUES ('".$Num_ID."','".$Date_Time."','".$LMessage."','".$LName."','".$Cusname."')";

$query = mysqli_query($conn,$sql); 

if($query) {

echo "Record add successfully"."<br>";
echo '<a href="forumReport.php?Num_ID='.$Num_ID.'" >Go to Home</a>';

}else {
	echo "MySQL Connect Failed : Error : ".mysqli_error($conn);
}

mysqli_close($conn);


?>


</body>
</HTML>