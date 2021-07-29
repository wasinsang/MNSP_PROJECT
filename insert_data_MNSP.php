
<?php

//insert_data.php
// มีปัญหาตรงดัเทล
include('connect_db.php'); 

if(isset($_POST["Customer_Name"]))
{
  $error = '';
  $success = '';
  $Customer_Name = '';
  $Num_ID = '';
  $Customer_info = '';
  $Sale_Name = '';
  $Pre_sale = '';
  $Service = '';
  $SO_Num = '';
  $SO_File = '';
  $Start_Date = '';
  $END_Date = '';
  $Critical = $_POST["Critical"];

  $PM_Name = $_POST["PM_Name"];
   $Customer_Name = $_POST["Customer_Name"];
   $Num_ID = $_POST["Num_ID"];
   $Customer_info = $_POST["Customer_info"];
   $PM_Name = $_POST["PM_Name"];
   $Sale_Name = $_POST["Sale_Name"];
   $Pre_sale = $_POST["Pre_sale"];
   $Service = $_POST["Service"];
   $SO_Num = $_POST["SO_Num"];
  
 if(isset($_FILES["SO_File"]["name"]))
 {
  $image_name = $_FILES["SO_File"]["name"];
  $array = explode(".", $image_name);
  $extension = end($array);
  $temporary_name = $_FILES["SO_File"]["tmp_name"];
  $allowed_extension = array("jpg","png","xlsx","csv","pdf","zip","doc","JPG");
  if(!in_array($extension, $allowed_extension))
  {
   $error .= '<p>Invalid SO_File</p>';
  }
  else
  {
   $SO_File = rand() . '.' . $extension;
   move_uploaded_file($temporary_name, '../project/Uploadfile/SO_File/' . $SO_File);
   $SO_Filee = '../project/Uploadfile/SO_File/' . $SO_File;
  }
 }
  $Start_Date = $_POST["Start_Date"];
  $END_Date = $_POST["END_Date"];
//  if(empty($_POST["Status"]))
//  {
//   $error .= '<p>Status is Required</p>';
//  }
//  else
//  {
//   $Status = $_POST["Status"];
//  }





 if($error == '')
 {
  $data = array(
   ':Customer_Name' => $Customer_Name,
   ':Num_ID'  => $Num_ID,
   ':Customer_info'  => $Customer_info,
   ':Sale_Name' => $Sale_Name,
   ':Pre_sale'   => $Pre_sale,
   ':Service'  => $Service,
   ':SO_Num'  => $SO_Num,
   ':SO_File' => $SO_Filee,
   ':Start_Date'   => $Start_Date,
   ':END_Date'  => $END_Date,
   ':PM_Name' => $PM_Name,
   ':Critical' => $Critical

  );

  $query = "
  INSERT INTO mnsp 
  (Customer_Name, Customer_id, Customer_info, PM_Name, Sale_Name, Pre_Sale, Service, SO_Num, SO_file, Start_Date, End_Date, Critical) 
  VALUES (:Customer_Name, :Num_ID, :Customer_info, :PM_Name, :Sale_Name, :Pre_sale, :Service, :SO_Num, :SO_File, :Start_Date, :END_Date, :Critical)
  ";
  // $query = "
  // INSERT INTO pm_mnsp 
  // (Customer_Name, Num_ID, Customer_info, PM_Name, Sale_Name, Pre_Sale, Service, SO_Num, SO_file, Start_Con, End_Date) 
  // VALUES (:Customer_Name, :Num_ID, :Customer_info, :PM_Name, :Sale_Name, :Pre_sale, :Service, :SO_Num, :SO_File, :Start_Date, :END_Date)
  // ";
  $statement = $connect->prepare($query);
  $statement->execute($data);
  $success = 'Employee Data Inserted';
 }
 $output = array(
  'success'  => $success,
  'error'   => $error
 );
 echo json_encode($output);
}

?>