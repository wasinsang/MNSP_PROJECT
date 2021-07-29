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

    <style>
    table{
  margin: 0 auto;
  width: 200%;
  clear: both;
  border-collapse: collapse;
  table-layout: fixed; // ***********add this
  word-wrap:break-word; // ***********and this
}
    </style>

</head>
<body id="page-top">

<!--------------------------- Connect to DB --------------------------->
<?php
    /*** Connect ***/
    include('connect.php');

    // echo $_GET["Num_ID"].$_GET["service"];


   $sql = "SELECT * FROM BCP WHERE Num_ID = '".$_GET["Num_ID"]."' ";

   $query = mysqli_query($conn,$sql);

   $result=mysqli_fetch_array($query,MYSQLI_ASSOC);


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
<a href="Edit_job_BCP.php?Num_ID=<?php echo $result["Num_ID"]; ?>" ><img src="image/Edit.png" width="40" height="30"></a>
<br>
<br>

<div class="table-responsive">
    <table class="w3-table-all" id="dataTable"  cellspacing="0">
    <thead>
	
    <tr class="w3-blue">
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
			<th width="200px"      >Customer Name</th>
            <th width="160px"       >Cus ID</th>
            <th width="160px"      >Cus info</th>
            <th width="120px"       >SO NO.</th>
            <th width="100px"      >SO File</th>
            <th width="150px"      >SO Terminate</th>
            <th width="150px"      >Start Date</th>
			<th width="150px" >End Date</th>
			<th width="150px" >Service</th>
            <th width="100px">Status</th>
			<th width="200px" >Sale</th>
			<th width="200px">Presale</th>
			<th width="200px">PM</th>
			<th width="100px">Delete</th>

        </tr>
    </thead>
    <tbody>

<!--------------------------- Show Detail --------------------------->


        <tr>
            <td><?php 
            if($result["Critical"] == 1)
            {
                echo '<span><i class="fa fa-bomb"></i></span>'.$result["Customer_Name"];
            }
            else
            {
                echo $result["Customer_Name"];
            }
            ?></td>
<!--------------------------- Button --------------------------->
			<td><?php echo $result["Customer_id"];?></td>
			<td><?php echo $result["Customer_info"];?></td>
            <td><?php echo $result["SO_Num"];?></td>
			<td><center><?php
			if($result["SO_File"] == ""){
			echo '<font color="red"><b>NO</b></font>';
			}else{
			echo '<a href="'.$result["SO_File"].'" target="_blank"><img src="image/download2.png" width="40" height="30"></a>';
			}
			?>
			</center></td>
			<td><center><?php
			if($result["SO_Ter"] == ""){
			echo '<font color="red"><b>NO</b></font>';
			}else{
			echo '<a href="'.$result["SO_Ter"].'" target="_blank"><img src="image/download2.png" width="40" height="30"></a>';
			}
			?>
			</center></td>

			<td><?php echo @$result["Start_Date"];?></td>
			<td><?php echo @$result["End_Date"];?></td>
			<td><?php echo $result["Service"];?></td>
			<td><?php echo $result["Status"];?></td>
			<td><?php echo $result["Sale_Name"];?></td>
			<td><?php echo $result["Pre_Sale"];?></td>
            <td><?php echo $result["PM_Name"];?></td>
            <td><center><?php echo '<a type="button" name="delete" data-name = "data" data-id="'.$result["Num_ID"].'" class="btn  btn-xs delete"><img src="image/delete.png" width="30" height="30"></a>'?>
			</center></td>
        </tr>
    </tbody>
</table>
<br>
<br>
</div>

<div class="card-body">

	<div class="content" align="center"><h1>Log Detail</h1>
	<div name="content" align="left">
	<a href="Add_forum_detail_BCP.php?Num_ID=<?php echo $_GET["Num_ID"];?>" ><img src="image/BAdd.png" width="40" height="30"></a>
<br>
<br>
<div class="table-responsive">
<table class = "w3-table-all">
    <thead>


	
    <tr class="w3-blue">
            <th width="200">Date_log</th>
            <th width="800" style="text-align:center" >Message</th>
            <th width="200">Name_Log</th>
            <th width="100"></th>
        </tr>
    </thead>
    <tbody>

	<?php
//   $sql3 = "SELECT * FROM forum_bcp WHERE Num_ID = '".$_GET["Num_ID"]."' ";

//   $query3 = mysqli_query($conn,$sql3);

//   $result3=mysqli_fetch_array($query3,MYSQLI_ASSOC);


	$sql2 = "SELECT * FROM forum_BCP WHERE Num_ID = '".$_GET["Num_ID"]."' order by FR_ID ASC";

   $query2 = mysqli_query($conn,$sql2);

while($result2=mysqli_fetch_array($query2,MYSQLI_ASSOC))
{
?>
 
<!--------------------------- Show Detail --------------------------->

        <tr>
            <td><?php echo $result2["Date_Time"];?></td>
            <td ><?php echo $result2["Message_Log"];?></td>
			<td><?php echo $result2["Name_Log"];?></td>
            <td style="text-align:right"><center><a href="edit_forum_bcp.php?FR_ID=<?php echo $result2["FR_ID"]; ?>" ><img src="image/Edit.png" width="30" height="20"></a><?php echo '<a type="button" name="delete" data-name = "log" data-id="'.$result2["FR_ID"].'" class="btn  btn-xs delete"><img src="image/delete.png" width="25" height="25"></a>'?>
			</center></td>

        </tr>

		<?php
}

mysqli_close($conn);
?>

</tbody>
</table>

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
  var id = $(this).data('id');
  var name = $(this).data('name');
  var kind = 'BCP';
  console.log(id);
  console.log(name);
  console.log(kind);
  
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
        console.log(id);
  console.log(name);
  console.log(kind);

  Dialogify.confirm("<label for='validationCustom02'>Are you sure to delete</label>", {
   ok:function(){
    $.ajax({
     url:"delete_data.php",
     method:"POST",
     data:{id:id,name:name,kind:kind},
     success:function(data)
     {
      Dialogify.alert("<label for='validationCustom02'>Data has been delete</label>");
    //   window.location.href = "../project/BCP.php";    
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
            Dialogify.alert("<label for='validationCustom02'>Use name of password is invalid</label>");
         }

    }
}
   ]).showModal();
 });


</script>
</body>

</html>