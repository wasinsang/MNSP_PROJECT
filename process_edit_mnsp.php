<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body>
<?php

	/*** Connect ***/
	include('connect.php');
 
 
    $sql = "SELECT * FROM mnsp WHERE Num_ID = '".$_POST["Num_ID"]."' ";

   $query = mysqli_query($conn,$sql);

   $result=mysqli_fetch_array($query,MYSQLI_ASSOC);


$Cust_id = $_POST["Customer_id"];
$Cus_info = $_POST["Customer_info"];
$Num_ID = $_POST["Num_ID"];
$Cust_name = $_POST["Customer_Name"];
$datepicker2 = $_POST["End_Date"];
$datepicker3 = $_POST["Start_Date"];
$PM_Name = $_POST["PM_Name"];
$Sale_Name = $_POST["Sale_Name"];
$Pre_Sale = $_POST["Pre_Sale"];
$Service = $_POST["Service"];
$SO = $_POST["SO_Num"];
$Status = $_POST["Status"];
if (isset($_POST['Critical'])) {
	//  echo "You chose the following color(s): <br>";
  
	 // foreach ($name as $color){
	 //     echo $color."<br />";
	  //}
	  $Critical = 1;
  
  } else {
	  $Critical = 0;
  }
  


############ Change End Date ############
$End_Date = date_create($datepicker2);
$End_Date2 = date_format($End_Date,"Y-m-d");
############ Change Start Contact ############
$Start_Con = date_create($datepicker3);
$Start_Con2 = date_format($Start_Con,"Y-m-d");

######################## Attack File ########################


############ Attack File 3 ############
	if ($_FILES['Monitor']['name'] == "" ){

		$path_copy2 = $result["Monitor"];
	
		}
		else{
		############ Attack File 2 ############
		$destfol2 = "../project/Uploadfile/Monitor/";
		$type2 = strrchr($_FILES['Monitor']['name'],".");
		$numrand2 = (mt_rand());
		$date2 = date("Ymd");
		$diagram2 = "Monitor";
		$newname2 = $date2.$diagram2.$numrand2.$type2;
		$path_copy2=$destfol2.$newname2;
		
		
		@unlink($_POST["Monitor"]);
		
		
		}
		if ($_FILES['Diagram']['name'] == "" ){

			$path_copy = $result["Diagram"];
		
			}
			else{
			############ Attack File 2 ############
			$destfol = "../project/Uploadfile/Diagram/";
			$type = strrchr($_FILES['Diagram']['name'],".");
			$numrand = (mt_rand());
			$date = date("Ymd");
			$diagram = "Diagram";
			$newname = $date.$diagram.$numrand.$type;
			$path_copy=$destfol.$newname;
			
			
			@unlink($_POST["Diagram"]);
			
			
			}
				if ($_FILES['SO_Ter']['name'] == "" ){

		$path_copy5 = $result["SO_Ter"];
		}
		else{
		
		
		
		############ Attack File 2 ############
		$destfol5 = "../project/Uploadfile/SO_Ter/";
		$type5 = strrchr($_FILES['SO_Ter']['name'],".");
		$numrand5 = (mt_rand());
		$date5 = date("Ymd");
		$diagram5 = "SO_Ter";
		$newname5 = $date5.$diagram5.$numrand5.$type5;
		$path_copy5=$destfol5.$newname5;
		
		
		@unlink($_POST["SO_Ter"]);
		
		
		}
		if ($_FILES['SO_File']['name'] == "" ){

			$path_copy4 = $result["SO_File"];
		
			}
			else{
			############ Attack File 2 ############
			$destfol4 = "../project/Uploadfile/SO_File/";
			$type4 = strrchr($_FILES['SO_File']['name'],".");
			$numrand4 = (mt_rand());
			$date4 = date("Ymd");
			$diagram4 = "SO_File";
			$newname4 = $date4.$diagram4.$numrand4.$type4;
			$path_copy4=$destfol4.$newname4;
			
			
			@unlink($_POST["SO_File"]);
			
			
			}
		
	


	$sql = "UPDATE mnsp SET 
			Customer_Name = '".$Cust_name."' ,
			Customer_id = '".$Cust_id."' ,
			End_Date = '".$End_Date2."' ,
			Start_Date = '".$Start_Con2."' ,
			PM_Name = '".$PM_Name."' ,
			Sale_Name = '".$Sale_Name."' ,
			Pre_Sale = '".$Pre_Sale."' ,
			Diagram = '".$path_copy."' ,
			Critical = '".$Critical."',
			Monitor = '".$path_copy2."' ,
			Service = '".$Service."', 
			SO_Num = '".$SO."',
			SO_File = '".$path_copy4."',
			Status = '".$Status."',
			SO_Ter = '".$path_copy5."',
			Customer_info = '".$Cus_info."'
			WHERE Num_ID = '".$Num_ID."' ";


$query = mysqli_query($conn,$sql);

if($query) {

$movefile1 = move_uploaded_file($_FILES['Diagram']['tmp_name'], $path_copy);
$movefile2 = move_uploaded_file($_FILES['Monitor']['tmp_name'], $path_copy2);
$movefile4 = move_uploaded_file($_FILES['SO_File']['tmp_name'], $path_copy4);
$movefile5 = move_uploaded_file($_FILES['SO_Ter']['tmp_name'], $path_copy5);
$url = "forummnsp.php?Num_ID=$Num_ID"; // this can be set based on whatever

echo "Record add successfully"."<br>";
//echo '<a href="../project/forummnsp.php?Num_ID='.$Num_ID.'" >Go to Home</a>';
header( "Location: $url" );

}else {
	echo "MySQL Connect Failed : Error : ".mysqli_error($conn);
}

mysqli_close($conn);


?>

