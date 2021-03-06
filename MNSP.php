<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
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
    <script src="https://use.fontawesome.com/896f73d09b.js"></script>    <!-- Custom styles for this template -->
</head>

<body id="page-top">
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
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-info sidebar sidebar-dark accordion" id="accordionSidebar">

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
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2" id="search_bar" value="">
                            <div class="input-group-append">
                                <a class="btn btn-info" id="search_btn" role="button" >
                                    <i class="fas fa-search fa-sm"></i>
                                </a>
                            </div>
                        </div>
                    </form>


                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Add -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <!-- <a class="nav-link " id="Add_data" role="button" data-toggle="modal" data-target="#addDataModal"> -->
                            <a class="nav-link " id="add_data" role="button">
                            <i class="fas fa-plus"></i>
                                <!-- Counter - Alerts -->
                            </a>
                        </li>

                        <!-- Nav Item - Download -->
                        <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link " href="#" id="Export" onclick="exportTableToCSV('MNSP.csv')" role="button">
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
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                <span id="form_response"></span>

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">MNSP</h1>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Data</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="w3-table-all" id="customer_data" width="100%" cellspacing="0">
                                    <thead>
                                        <tr class="w3-blue">
                                            <th >Customer Name</th>
                                            <th>Cus ID</th>
                                            <th>SO No.</th>
                                            <th>Start Date</th>
                                            <th>End Date</th>
                                            <th>Service</th>
                                            <th>Sale</th>
                                            <th>Presale</th>
                                            <th>PM</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.php">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
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
    <script src="js/demo/datatables-demo.js"></script>
    <script src="https://www.jqueryscript.net/demo/Dialog-Modal-Dialogify/dist/dialogify.min.js"></script>
    <script>
    function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("customer_data");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

</script>

    <script type="text/javascript" language="javascript" >
 $(document).ready(function(){
  
  fill_datatable();

  function fill_datatable(search = '')
  {
   var dataTable = $('#customer_data').DataTable({
    "processing" : true,
    "serverSide" : true,
    "ordering": false,
    "searching" : false,
    "ajax" : {
     url:"MNSPData.php",
     type:"POST",
     data:{
        search:search
     }
    },
    "columnDefs": [
      { "width": "150px", "targets": 0 },
      { "width": "140px", "targets": 1 },
      { "width": "100px", "targets": 2 },
      { "width": "120px", "targets": 3 },
      { "width": "100px", "targets": 4 },
      { "width": "100px", "targets": 5 },
      { "width": "70px", "targets": 6 },
      { "width": "70px", "targets": 7 },
      { "width": "70px", "targets": 8 },
      { "width": "70px", "targets": 9 },
    ]
   });
  }
  $('#search_btn').click(function(){
   var search = $('#search_bar').val();
   if(search != '')
   {
    $('#customer_data').DataTable().destroy();
    fill_datatable(search);
   }
   else
   {
    $('#customer_data').DataTable().destroy();
    fill_datatable();
   }
  });

 });
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
     url:"delete_data_MNSP.php",
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
 $('#add_data').click(function(){
  var options = {
   ajaxPrefix:''
  };
  new Dialogify('add_data_form.php', options)
   .title('Add New customer Data')
   .buttons([
    {
     text:'Cancle',
     click:function(e){
      this.close();
     }
    },
    {
     text:'Insert',
     type:Dialogify.BUTTON_PRIMARY,
     click:function(e)
     {
      var SO_File = $('#SO_File').prop("files")[0];
    //   var Confirm_UAT = $('#Confirm_UAT').prop("files")[0];
    //   var UAT = $('#UAT').prop("files")[0];
    //   var Monitor = $('#Monitor').prop("files")[0];
    //   var Diagram = $('#Diagram').prop("files")[0];
      var Critical = '';
      var form_data1 = new FormData();
      var form_data2 = new FormData();
      var form_data3 = new FormData();
      var form_data4 = new FormData();
      var PM = document.getElementById('service1').checked;
      var MNSP = document.getElementById('service2').checked;
      var BCP = document.getElementById('service3').checked;
      var Report = document.getElementById('service4').checked;
      if (document.getElementById('Critical').checked == true)
      {
        Critical = 1;
      }
      else
      {
        Critical = 0;
      }
      console.log("PM =" + PM);
      console.log("MNSP =" + MNSP);
      console.log("BCP =" + BCP);
      console.log("Report =" + Report);
      console.log("Critiical =" + Critical);
    //   Report
      form_data1.append('Customer_Name', $('#Customer_Name').val());
      form_data1.append('Num_ID', $('#Num_ID').val());
      form_data1.append('Customer_info', $('#Customer_info').val());
      form_data1.append('PM_Name', $('#PM_Name').val());
      form_data1.append('Sale_Name', $('#Sale_Name').val());
      form_data1.append('Pre_sale', $('#Pre_sale').val());
      form_data1.append('Service', $('#Service').val());
      form_data1.append('SO_Num', $('#SO_Num').val());
      form_data1.append('SO_File', SO_File);
      form_data1.append('Critical', Critical);
      form_data1.append('Start_Date', $('#Start_Date').val());
      form_data1.append('END_Date', $('#END_Date').val());
    //   form_data1.append('Due_Date', $('#Due_Date').val());
    //   form_data1.append('Detail', $('#Detail').val());//report
      
    //   PM
      form_data2.append('Customer_Name', $('#Customer_Name').val());
      form_data2.append('Num_ID', $('#Num_ID').val());
      form_data2.append('Customer_info', $('#Customer_info').val());
      form_data2.append('PM_Name', $('#PM_Name').val());
      form_data2.append('Sale_Name', $('#Sale_Name').val());
      form_data2.append('Pre_sale', $('#Pre_sale').val());
      form_data2.append('Service', $('#Service').val());
      form_data2.append('SO_Num', $('#SO_Num').val());
      form_data2.append('SO_File', SO_File);
      form_data2.append('Critical', Critical);

      form_data2.append('Start_Date', $('#Start_Date').val());
      form_data2.append('END_Date', $('#END_Date').val());
    //   form_data2.append('Confirm_UAT', Confirm_UAT);//PM
    //   form_data2.append('UAT', UAT);//PM
    //   form_data2.append('Status', $('#Status').val());//PM
    //   form_data2.append('Diagram', Diagram);//MNSP

    //   MNSP

      form_data3.append('Customer_Name', $('#Customer_Name').val());
      form_data3.append('Num_ID', $('#Num_ID').val());
      form_data3.append('Customer_info', $('#Customer_info').val());
      form_data3.append('PM_Name', $('#PM_Name').val());
      form_data3.append('Sale_Name', $('#Sale_Name').val());
      form_data3.append('Pre_sale', $('#Pre_sale').val());
      form_data3.append('Service', $('#Service').val());
      form_data3.append('SO_Num', $('#SO_Num').val());
      form_data3.append('SO_File', SO_File);
      form_data3.append('Critical', Critical);

      form_data3.append('Start_Date', $('#Start_Date').val());
      form_data3.append('END_Date', $('#END_Date').val());
    //   form_data3.append('Diagram', Diagram);//MNSP
    //   form_data3.append('Monitor', Monitor);//MNSP
      


    //   BCP
      form_data4.append('Customer_Name', $('#Customer_Name').val());
      form_data4.append('Num_ID', $('#Num_ID').val());
      form_data4.append('Customer_info', $('#Customer_info').val());
      form_data4.append('PM_Name', $('#PM_Name').val());
      form_data4.append('Sale_Name', $('#Sale_Name').val());
      form_data4.append('Pre_sale', $('#Pre_sale').val());
      form_data4.append('Service', $('#Service').val());
      form_data4.append('SO_Num', $('#SO_Num').val());
      form_data4.append('SO_File', SO_File);
      form_data4.append('Critical', Critical);

      form_data4.append('Start_Date', $('#Start_Date').val());
      form_data4.append('END_Date', $('#END_Date').val());
    //   form_data4.append('Data_BCP', $('#Data_BCP').val());//BCP

    //   if(Report == true)
    //   {
       if (PM == true )
       {
        for (var value of form_data2.values()) {
        console.log(typeof value); 
        console.log(value); 
        console.log("pm"); 
      }

        $.ajax({
       method:"POST",
       url:'insert_data_PM.php',
       data:form_data2,
       dataType:'json',
       contentType:false,
       cache:false,
       processData:false,
       success:function(data)
       {
        if(data.error != '')
        {
         $('#form_response').html('<div class="alert alert-danger">'+data.error+'</div>');
        }
        else
        {
         $('#form_response').html('<div class="alert alert-success">'+data.success+'</div>');
         location.reload();
         console.log(data.success); 
         console.log(data.error); 

        }
       }
      });
       }
       if (MNSP == true )
       {
        for (var value of form_data3.values()) {
        console.log(typeof value); 
        console.log(value); 
        console.log("mnsp"); 
      }

        $.ajax({
       method:"POST",
       url:'insert_data_MNSP.php',
       data:form_data3,
       dataType:'json',
       contentType:false,
       cache:false,
       processData:false,
       success:function(data)
       {
        if(data.error != '')
        {
         $('#form_response').html('<div class="alert alert-danger">'+data.error+'</div>');
        }
        else
        {
         $('#form_response').html('<div class="alert alert-success">'+data.success+'</div>');
         location.reload();
         console.log(data.success); 
         console.log(data.error); 

        }
       }
      });
       }
       if (BCP == true )
       {
        for (var value of form_data4.values()) {
        console.log(typeof value); 
        console.log(value); 
        console.log("BCP"); 
      }

        $.ajax({
       method:"POST",
       url:'insert_data_BCP.php',
       data:form_data4,
       dataType:'json',
       contentType:false,
       cache:false,
       processData:false,
       success:function(data)
       {
        if(data.error != '')
        {
         $('#form_response').html('<div class="alert alert-danger">'+data.error+'</div>');
        }
        else
        {
         $('#form_response').html('<div class="alert alert-success">'+data.success+'</div>');
         location.reload();
         console.log(data.success); 
         console.log(data.error); 

        }
       }
      });
       }
       if (Report == true )
       {
        for (var value of form_data1.values()) {
        console.log(typeof value); 
        console.log(value); 
        console.log("report"); 
      }
 
        $.ajax({
       method:"POST",
       url:'insert_data_report.php',
       data:form_data1,
       dataType:'json',
       contentType:false,
       cache:false,
       processData:false,
       success:function(data)
       {
        if(data.error != '')
        {
         $('#form_response').html('<div class="alert alert-danger">'+data.error+'</div>');
        }
        else
        {
         $('#form_response').html('<div class="alert alert-success">'+data.success+'</div>');
         location.reload();
         console.log(data.success); 
         console.log(data.error); 

        }
       }
      });
       }
       if(Report == false && PM == false && BCP == false && MNSP == false)
       {
        $('#form_response').html('<div class="alert alert-danger">please check a service</div>'); 
       }


     }
    }
   ]).showModal();
 });
 function downloadCSV(csv, filename) {
    var CSVV ="\ufeff"+csv
    var csvFile;
    var downloadLink;

    // CSV file
    csvFile = new Blob([CSVV], {type: 'type:"text/csv;charset=UTF-8"'});

    // Download link
    downloadLink = document.createElement("a");

    // File name
    downloadLink.download = filename;

    // Create a link to the file
    downloadLink.href = window.URL.createObjectURL(csvFile);

    // Hide download link
    downloadLink.style.display = "none";

    // Add the link to DOM
    document.body.appendChild(downloadLink);

    // Click download link
    downloadLink.click();
}
function exportTableToCSV(filename) {
    var csv = [];
    var rows = document.querySelectorAll("table tr");
    
    for (var i = 0; i < rows.length; i++) {
        var row = [], cols = rows[i].querySelectorAll("td, th");
        
        for (var j = 0; j < cols.length; j++) 
            row.push(cols[j].innerText);
        
        csv.push(row.join(","));        
    }

    // Download CSV file
    downloadCSV(csv.join("\n"), filename);
}

</script>
</body>

</html>