<!DOCTYPE html>
<html>
<head>



<link href="/project/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../project/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../project/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">



    <script src="../project/vendor/jquery/jquery.min.js"></script>
    <script src="../project/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../project/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../project/js/sb-admin-2.min.js"></script>
    <meta name="viewport" charset="utf=8" content="width=device-width, initial-scale=1.0">


</head>

<body>

<!--------------------------- check input ---------------------------->
<script language="javascript">
function fncSubmit()
{
	if(document.form1.LName.value == "")
	{
		alert('Please input Name ');
		document.form1.LName.focus();
		return false;
	}	
	if(document.form1.LMessage.value == "")
	{
		alert('Please input Message');
		document.form1.LMessage.focus();		
		return false;
	}	

	document.form1.submit();
}
</script>

<?php
	/*** Connect ***/
	/*** Connect ***/
  include('connect.php');




  // $sql = "SELECT * FROM BCP WHERE Num_ID = '".$_GET["Num_ID"]."' ";

  // $query = mysqli_query($conn,$sql);

  // $result=mysqli_fetch_array($query,MYSQLI_ASSOC);
  $sql2 = "SELECT * FROM forum_mnsp WHERE FR_ID = '".$_GET["FR_ID"]."' ";

  $query2 = mysqli_query($conn,$sql2);

  $result2=mysqli_fetch_array($query2,MYSQLI_ASSOC);


?>

<!--------------------------- check input ---------------------------->
<ul class="navbar-nav ml-auto">

	<div align="center" class="head">
		<div class="head-in">
			<span>
			<a href="../project/index.php"><img src="image/logo.jpg" style="float: left;width: 30%;"></a>
			</span>
			
		</div>
  </div>
</ul>
<div class="container">
<h1>Input Detail Log Message </h1>
    <form class="form-horizontal" role="form" name="form1" action="process_add_forum_edit.php" method="post" enctype="multipart/form-data" onSubmit="JavaScript:return fncSubmit();">

    <input type="hidden" value = "<?php echo $result2["Customer_name"];?>" name="Customer_name">
    <input type="hidden" value = "<?php echo $result2["Num_ID"];?>" name="Num_ID">
    <input type="hidden" value = "MNSP" name="Service">
    <input type="hidden" value = "<?php echo $result2["FR_ID"];?>" name="FR_ID">
	<input type="hidden" value = "<?php echo date("Y-m-d H:i:s");?>" name="Date_Time">

        <div class="form-group">
        <label for="Cust" class="col-sm-2 control-label">Customer Name :</label>
        <div class="col-sm-5">
           <label for="Cust" class="form-control inputstl"><?php echo $result2["Customer_name"];?></label>

        </div>
      </div>

      <div class="form-group">
        <label for="Name" class="col-sm-2 control-label">Name Log :</label>
        <div class="col-sm-5">
          <input type="textarea" class="form-control inputstl" id="LName" name="LName" placeholder="Enter Name Log HERE" value="<?php echo $result2["Name_Log"]; ?>">

        </div>
      </div>

      <div class="form-group">
        <label for="Message" class="col-sm-2 control-label">Message Log:</label>
        <div class="col-sm-7">
           <input class="form-control inputstl" rows="10" cols="100" id="LMessage" name="LMessage" placeholder="Enter Message Log HERE" value="<?php echo $result2["Message_Log"];?>"></input> 
        </div>
      </div>  
      <div class="form-group">  
        <div class="col-sm-offset-2 col-sm-2">
          <button type="submit" class="btn btn-lg btn-block btn-primary">EDIT</button>
        </div>
      </div>
    </form>
   </div> 
<script>
			$('#selphoto').filestyle({
				buttonName : 'btn-primary',
                buttonText : ' Upload an Image',
                iconName : 'glyphicon glyphicon-upload'
			});
</script>   
</body>
</html>

