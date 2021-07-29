<?php

include('connect_db.php');

$column = array('CustomerName', 'CusID', 'Start_Date', 'END_Date', 'PM', 'Sale', 'Pre_Sale', 'Service', 'SO_Num', 'SO_file', 'Detail' );

$query = "
SELECT * FROM BCP 
";

if(isset($_POST['filter_country']) && $_POST['filter_country'] != '')
{
 $query .= '
 WHERE Status = "'.$_POST['filter_country'].'" 
 ';
}
if(isset($_POST['search']) && $_POST['search'] != '')
{
 $query .= '
 WHERE Customer_id LIKE "'."%".''.$_POST['search'].''."%".'" OR Customer_Name LIKE "'."%".''.$_POST['search'].''."%".'" OR PM_Name LIKE "'."%".''.$_POST['search'].''."%".'"
 ';
} 


if(isset($_POST['order']))
{
 $query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
}
else
{
 $query .= 'ORDER BY Num_ID DESC ';
}

$query1 = '';

if($_POST["length"] != -1)
{
 $query1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$statement = $connect->prepare($query);

$statement->execute();

$number_filter_row = $statement->rowCount();

$statement = $connect->prepare($query . $query1);

$statement->execute();

$result = $statement->fetchAll();


$data = array();
$date = date("Y-m-d");

foreach($result as $row)
{
 $sub_array = array();
 $name = '';
 $IDD = $row["Num_ID"];
 if($row['Critical'] == 1)
 {
   $name = '<span><i class="fa fa-bomb"></i></span>'.$row['Customer_Name'];
 }
 else
 {
   $name = $row['Customer_Name'];
 }

 if($row['End_Date']<$date)
 {
   if($row['Status'] != 'Complete')
   {
    if($row['Status'] == 'Terminate')
    {
     $sub_array[] = '<a style="color:blue" href="../project/forumBCP.php?Num_ID='.$row["Num_ID"].'">'.$name.'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Customer_id'].'</a>';
     $sub_array[] = '<a style="color:blue" href="'.($row['SO_File']).'" >'.$row['SO_Num'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Start_Date'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['End_Date'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Service'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Sale_Name'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Pre_Sale'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['PM_Name'].'</a>';
     $sub_array[] = '<a style="color:blue">'.$row['Status'].'</a>';
    }
    else
    {
      $sql = "UPDATE BCP SET Status='Expire' WHERE Num_ID =$IDD";
  
      $connect->query($sql);
    
      $sub_array[] = '<a style="color:red" href="../project/forumBCP.php?Num_ID='.$row["Num_ID"].'">'.$name.'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Customer_id'].'</a>';
      $sub_array[] = '<a style="color:red" href="'.($row['SO_File']).'" >'.$row['SO_Num'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Start_Date'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['End_Date'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Service'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Sale_Name'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Pre_Sale'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['PM_Name'].'</a>';
      $sub_array[] = '<a style="color:red">'.$row['Status'].'</a>';
   
    }  
   }
   else
   {
      $sub_array[] = '<a href="../project/forumBCP.php?Num_ID='.$row["Num_ID"].'">'.$name.'</a>';
      $sub_array[] = $row['Customer_id'];
      $sub_array[] = '<a href="'.($row['SO_File']).'" >'.$row['SO_Num'].'</a>';
      $sub_array[] = $row['Start_Date'];
      $sub_array[] = $row['End_Date'];
      $sub_array[] = $row['Service'];
      $sub_array[] = $row['Sale_Name'];
      $sub_array[] = $row['Pre_Sale'];
      $sub_array[] = $row['PM_Name'];
      $sub_array[] = $row['Status'];
      }  
 }
 else
 {
    $sub_array[] = '<a href="../project/forumBCP.php?Num_ID='.$row["Num_ID"].'">'.$name.'</a>';
    $sub_array[] = $row['Customer_id'];
    $sub_array[] = '<a href="'.($row['SO_File']).'" >'.$row['SO_Num'].'</a>';
    $sub_array[] = $row['Start_Date'];
    $sub_array[] = $row['End_Date'];
    $sub_array[] = $row['Service'];
    $sub_array[] = $row['Sale_Name'];
    $sub_array[] = $row['Pre_Sale'];
    $sub_array[] = $row['PM_Name'];
    $sub_array[] = $row['Status'];
    }
 $data[] = $sub_array;
}

function count_all_data($connect)
{
 $query = "SELECT * FROM BCP";
 $statement = $connect->prepare($query);
 $statement->execute();
 return $statement->rowCount();
}

$output = array(
 "draw"       =>  intval($_POST["draw"]),
 "recordsTotal"   =>  count_all_data($connect),
 "recordsFiltered"  =>  $number_filter_row,
 "data"       =>  $data
);

echo json_encode($output);
?>