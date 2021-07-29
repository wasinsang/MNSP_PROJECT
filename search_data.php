<!DOCTYPE html>
<html>
<head>

	<meta charset="utf=8">
	<title>BCP Service</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PM system</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/896f73d09b.js"></script>    <!-- Custom styles for this template -->
    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


</head>
<body id="page-top">

<!--------------------------- Connect to DB --------------------------->
<?php
    /*** Connect ***/
    include('connect.php');


// echo $_GET["search_bar"];

// $sql = "SELECT * FROM BCP WHERE Num_ID = '".$_GET["Num_ID"]."' ";

// $query = mysqli_query($conn,$sql);

// $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
// $sql = "SELECT * FROM BCP WHERE Num_ID = '".$_GET["Num_ID"]."' ";

// $query = mysqli_query($conn,$sql);

// $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
// $sql = "SELECT * FROM BCP WHERE Num_ID = '".$_GET["Num_ID"]."' ";

// $query = mysqli_query($conn,$sql);

// $result=mysqli_fetch_array($query,MYSQLI_ASSOC);


?>

<div id="wrapper">
<ul class="navbar-nav bg-info sidebar sidebar-dark accordion toggled" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a href="../project/index.php"><img src="../project/image/logo_edit.png" style="float: left;width: 150%;"></a>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.php">
                <i class="fa fa-home" aria-hidden="true"></i>
                                    <span>Home</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Service
            </div>

            <!-- Nav Item - PM -->
            <li class="nav-item">
                <a class="nav-link" href="PM.php">
                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                    <span>PM</span></a>
            </li>

            <!-- Nav Item - MNSP -->
            <li class="nav-item">
                <a class="nav-link" href="MNSP.php">
                <i class="fa fa-bar-chart" aria-hidden="true"></i>
                                    <span>MNSP</span></a>
            </li>

            <!-- Nav Item - Report -->
            <li class="nav-item">
                <a class="nav-link" href="Report.php">
                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                                    <span>Monthly Report</span></a>
            </li>

            <!-- Nav Item - BCP -->
            <li class="nav-item">
                <a class="nav-link" href="BCP.php">
                <i class="fas fa-fw fa-line-chart"></i>
                    <span>Service BCP</span></a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <div id="content-wrapper" class="d-flex flex-column">
        <div id="content">
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
    <i class="fa fa-bars"></i>
</button>

<!-- Topbar Navbar -->
<ul class="navbar-nav ml-auto">


    <!-- Nav Item - Add -->

    <!-- Nav Item - Download -->
    <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link " href="#" id="Export" role="button">
            <i class="fas fa-download"></i>
            <!-- Counter - Messages -->
        </a>
    </li>

      <!-- Nav Item - Calender -->
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link " href="https://teamup.com/ks3yzgm9fgsa7fd1p5" id="Calender" role="button">
            <i class="	fas fa-calendar-alt"></i>
            <!-- Counter - Messages -->
        </a>
    </li>

    <div class="topbar-divider d-none d-sm-block"></div>

    <!-- Nav Item - User Information -->
    <!-- <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
            <img class="img-profile rounded-circle"
                src="img/undraw_profile.svg">
        </a>
        
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
            aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                Profile
            </a>
            <a class="dropdown-item" href="#">
                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                Settings
            </a>
            <a class="dropdown-item" href="#">
                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                Activity Log
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
            </a>
        </div>
    </li> -->

</ul>

</nav>
<div class="content" align="center">
<div name="content" align="left"> 
	
<br>

<div class="card-body">
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">PM Service</h6>
</div>
    <div class="table-responsive">
    <table class="w3-table-all" id="dataTable"  cellspacing="0">
    <thead>
	
        <tr class="w3-orange">
            <!-- <th>Customer Name</th>
            <th>Status</th>
			<th>End Date</th>
			<th>Start Con.</th>
            <th>PM</th>
			<th>Sale Name</th>
			<th>Pre-Sale</th>
			<th>Design</th>
			<th>Confirm UAT (Customer&Sales)</th>
			<th>UAT</th>
			<th>Service</th> -->
			<th >Customer Name</th>
            <th>Customer ID</th>
            <th>PM Name</th>
            <th>Sale Name</th>
            <th>Pre Sale Name</th>
            <th>Service</th>
        </tr>
    </thead>
    <tbody>

	<?php

$sql = "SELECT Num_ID,Customer_Name,Customer_id,PM_Name,Sale_Name,Pre_Sale FROM pm_mnsp WHERE Customer_Name LIKE '%".$_GET["search_bar"]."%' OR Customer_id LIKE '%".$_GET["search_bar"]."%'";

$query = mysqli_query($conn,$sql);

while($result=mysqli_fetch_array($query,MYSQLI_ASSOC))
{
?>

<!--------------------------- Show Detail --------------------------->

        <tr>
        <td><?php echo '<a href="../project/forumPM.php?Num_ID='.$result["Num_ID"].'">'.$result["Customer_Name"].'</a>';?></td>
            <td><?php echo $result["Customer_id"];?></td>
            <td><?php echo $result["PM_Name"];?></td>
            <td><?php echo $result["Sale_Name"];?></td>
            <td><?php echo $result["Pre_Sale"];?></td>
			<td><?php echo "PM";?></td>
        </tr>

		<?php
}

?>

</tbody>
</table>
<br>
<br>

	</div>
</div>
<div class="card-body">
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">MNSP Service</h6>
</div>
    <div class="table-responsive">
    <table class="w3-table-all" id="dataTable"  cellspacing="0">
    <thead>
	
        <tr class="w3-orange">
            <!-- <th>Customer Name</th>
            <th>Status</th>
			<th>End Date</th>
			<th>Start Con.</th>
            <th>PM</th>
			<th>Sale Name</th>
			<th>Pre-Sale</th>
			<th>Design</th>
			<th>Confirm UAT (Customer&Sales)</th>
			<th>UAT</th>
			<th>Service</th> -->
			<th >Customer Name</th>
            <th>Customer ID</th>
            <th>PM Name</th>
            <th>Sale Name</th>
            <th>Pre Sale Name</th>
            <th>Service</th>
        </tr>
    </thead>
    <tbody>

	<?php

$sql2 = "SELECT Num_ID,Customer_Name,Customer_id,PM_Name,Sale_Name,Pre_Sale FROM mnsp WHERE Customer_Name LIKE '%".$_GET["search_bar"]."%' OR Customer_id LIKE '%".$_GET["search_bar"]."%'";

$query2 = mysqli_query($conn,$sql2);

while($result2=mysqli_fetch_array($query2,MYSQLI_ASSOC))
{
?>

<!--------------------------- Show Detail --------------------------->

        <tr>
        <td><?php echo '<a href="../project/forummnsp.php?Num_ID='.$result2["Num_ID"].'">'.$result2["Customer_Name"].'</a>';?></td>
            <td><?php echo $result2["Customer_id"];?></td>
            <td><?php echo $result2["PM_Name"];?></td>
            <td><?php echo $result2["Sale_Name"];?></td>
            <td><?php echo $result2["Pre_Sale"];?></td>
			<td><?php echo "MNSP";?></td>
        </tr>

		<?php
}

?>

</tbody>
</table>
<br>
<br>

	</div>
</div>
<div class="card-body">
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">BCP Service</h6>
</div>
    <div class="table-responsive">
    <table class="w3-table-all" id="dataTable"  cellspacing="0">
    <thead>
	
        <tr class="w3-orange">
            <!-- <th>Customer Name</th>
            <th>Status</th>
			<th>End Date</th>
			<th>Start Con.</th>
            <th>PM</th>
			<th>Sale Name</th>
			<th>Pre-Sale</th>
			<th>Design</th>
			<th>Confirm UAT (Customer&Sales)</th>
			<th>UAT</th>
			<th>Service</th> -->
			<th >Customer Name</th>
            <th>Customer ID</th>
            <th>PM Name</th>
            <th>Sale Name</th>
            <th>Pre Sale Name</th>
            <th>Service</th>
        </tr>
    </thead>
    <tbody>

	<?php

$sql3 = "SELECT Num_ID,Customer_Name,Customer_id,PM_Name,Sale_Name,Pre_Sale FROM BCP WHERE Customer_Name LIKE '%".$_GET["search_bar"]."%' OR Customer_id LIKE '%".$_GET["search_bar"]."%'";

$query3 = mysqli_query($conn,$sql3);

while($result3=mysqli_fetch_array($query3,MYSQLI_ASSOC))
{
?>

<!--------------------------- Show Detail --------------------------->

        <tr>
        <td><?php echo '<a href="../project/forumBCP.php?Num_ID='.$result3["Num_ID"].'">'.$result3["Customer_Name"].'</a>';?></td>
            <td><?php echo $result3["Customer_id"];?></td>
            <td><?php echo $result3["PM_Name"];?></td>
            <td><?php echo $result3["Sale_Name"];?></td>
            <td><?php echo $result3["Pre_Sale"];?></td>
			<td><?php echo "BCP";?></td>
        </tr>

		<?php
}

?>

</tbody>
</table>
<br>
<br>

	</div>
</div>
<div class="card-body">
<div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Report Service</h6>
</div>
    <div class="table-responsive">
    <table class="w3-table-all" id="dataTable"  cellspacing="0">
    <thead>
	
        <tr class="w3-orange">
            <!-- <th>Customer Name</th>
            <th>Status</th>
			<th>End Date</th>
			<th>Start Con.</th>
            <th>PM</th>
			<th>Sale Name</th>
			<th>Pre-Sale</th>
			<th>Design</th>
			<th>Confirm UAT (Customer&Sales)</th>
			<th>UAT</th>
			<th>Service</th> -->
			<th >Customer Name</th>
            <th>Customer ID</th>
            <th>PM Name</th>
            <th>Sale Name</th>
            <th>Pre Sale Name</th>
            <th>Service</th>
        </tr>
    </thead>
    <tbody>

	<?php

$sql4 = "SELECT Num_ID,Customer_Name,Customer_id,PM_Name,Sale_Name,Pre_Sale FROM Report WHERE Customer_Name LIKE '%".$_GET["search_bar"]."%' OR Customer_id LIKE '%".$_GET["search_bar"]."%'";

$query4 = mysqli_query($conn,$sql4);

while($result4=mysqli_fetch_array($query4,MYSQLI_ASSOC))
{
?>

<!--------------------------- Show Detail --------------------------->

        <tr>
            <td><?php echo '<a href="../project/forumReport.php?Num_ID='.$result4["Num_ID"].'">'.$result4["Customer_Name"].'</a>';?></td>
            <td><?php echo $result4["Customer_id"];?></td>
            <td><?php echo $result4["PM_Name"];?></td>
            <td><?php echo $result4["Sale_Name"];?></td>
            <td><?php echo $result4["Pre_Sale"];?></td>
			<td><?php echo "Report";?></td>
        </tr>

		<?php
}

mysqli_close($conn);
?>

</tbody>
</table>
<br>
<br>

	</div>
</div>
</div>
<script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="https://www.jqueryscript.net/demo/Dialog-Modal-Dialogify/dist/dialogify.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> -->

</div>

<script>

 $(document).on('click', '.delete', function(){
    var options = {
   ajaxPrefix:''
  };
  var id = $(this).attr('id');

  new Dialogify('Delete.php', options)
   .title('Delete_data')
   .buttons([
    {
     text:'Cancle',
     click:function(e){
      this.close();
     }
    },
    {
     text:'Submit',
     type:Dialogify.BUTTON_PRIMARY,
     click:function(e)
     {
        var user = document.getElementById("name").value;
        var pass = document.getElementById("Password").value;
        console.log(user);
        console.log(pass);
      if(user == 'admin' && pass == 1234)
    { 
  Dialogify.confirm("<h3 class='text-danger'><b>Are you sure you want to remove this data?</b></h3>", {
   ok:function(){
    $.ajax({
     url:"delete_data_BCP.php",
     method:"POST",
     data:{id:id},
     success:function(data)
     {
      Dialogify.alert('<h3 class="text-success text-center"><b>Data has been deleted</b></h3>');
      location.reload();
     }
    })
   },
   cancel:function(){
    this.close();
   }
  });
         }
         else
         {
            Dialogify.alert('<h3 class="text-danger text-center"><b>User or Password is invalid</b></h3>');
         }

    }
}
   ]).showModal();
 });

</script>
</body>

</html>