<!DOCTYPE html>
<html>
<head>
    <link href="../project/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
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

<?php
include("connect_db.php");

   $sql = "SELECT * FROM pm_mnsp WHERE Num_ID = '".$_GET["Num_ID"]."' ";

   $query = mysqli_query($conn,$sql);

   $result=mysqli_fetch_array($query,MYSQLI_ASSOC);



?>

<!--------------------------- check input ---------------------------->
<script language="javascript">
function fncSubmit()
{
	if(document.form1.Cust_name.value == "")
	{
		alert('Please input Customer name');
		document.form1.Cust_name.focus();
		return false;
	}	
	if(document.form1.Status.value == "")
	{
		alert('Please input Status');
		document.form1.Status.focus();		
		return false;
	}	


	if(document.form1.datepicker.value == "")
	{
		alert('Please input Date');
		document.form1.datepicker.focus();		
		return false;
	}	


	if(document.form1.PM_Name.value == "")
	{
		alert('Please input PM Name');
		document.form1.PM_Name.focus();		
		return false;
	}	


	if(document.form1.Sale_Name.value == "")
	{
		alert('Please input Sale Name');
		document.form1.Sale_Name.focus();		
		return false;
	}	


	if(document.form1.Service.value == "")
	{
		alert('Please input Service');
		document.form1.Service.focus();		
		return false;
	}	
	document.form1.submit();
}
</script>

<!--------------------------- check input ---------------------------->



<div align="center" class="head">
		<div class="head-in">
			<span>
			<a href="../project/index.php"><img src="image/logo.jpg" style="float: left;width: 50%;"></a>
			</span>
			
		</div>
	</div>
<div class="container">
<h1>Input Detail Project Management</h1>

<form class="needs-validation" name="form1" action="process_edit_PM.php" method="post" enctype="multipart/form-data" onSubmit="JavaScript:return fncSubmit();" novalidate>
<input type="hidden" value = "<?php echo $result["Num_ID"];?>" name="Num_ID">

                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom01">Customer Name</label>
                            <input type="text" class="form-control" id="Customer_Name" placeholder="Customer Name" value="<?php echo $result["Customer_Name"];?>" >
                            <div class="valid-feedback">
                              Looks good!
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom02">Customer ID</label>
                            <input type="text" class="form-control" id="Num_ID" placeholder="Customer ID" value="<?php echo $result["Customer_id"];?>" >
                            <div class="valid-feedback">
                              Looks good!
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom03">Customer info</label>
                            <input type="text" class="form-control" id="Customer_info" placeholder="Contace info" value="<?php echo $result["Customer_info"];?>">
                            <div class="invalid-feedback">
                              Please provide a valid city.
                            </div>
                          </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustomPM">PM Name</label>
                                <select class="custom-select" id="PM_Name" >
                                    <option value="<?php echo $result["PM_Name"];?>"><?php echo $result["PM_Name"];?></option>
                                    <option value="?????????????????? ??????????????????????????? (?????????)">?????????????????? ??????????????????????????? (?????????)</option>
                                    <option value="???????????????????????? ??????????????????????????? (???????????????)">???????????????????????? ??????????????????????????? (???????????????)</option>
                                    <option value="???????????????????????? ???????????????????????? (?????????)">???????????????????????? ???????????????????????? (?????????)</option>
                                    <option value="??????????????? ???????????????????????????????????????????????? (?????????)">??????????????? ???????????????????????????????????????????????? (?????????)</option>
                                    <option value="??????????????? ?????????????????? (?????????)">??????????????? ?????????????????? (?????????)</option>
                                    <option value="?????????????????? ?????????????????? (?????????)">?????????????????? ?????????????????? (?????????)</option>
                                    <option value="????????????????????? ??????????????????????????? (?????????)">????????????????????? ??????????????????????????? (?????????)</option>
                                    <option value="?????????????????? ??????????????? (??????????????????)">?????????????????? ??????????????? (??????????????????)</option>
                                    <option value="?????????????????? ?????????????????????????????? (??????????????????)">?????????????????? ?????????????????????????????? (??????????????????)</option>
                                    <option value="????????????????????? ????????????????????? (?????????)">????????????????????? ????????????????????? (?????????)</option>
                                </select>                              
                                <div class="invalid-feedback">
                                    Please choose a name.
                                  </div>
                              </div>
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom04">Sale name</label>
                            <input type="text" class="form-control" id="Sale_Name" placeholder="Sale name" value="<?php echo $result["Sale_Name"];?>">
                            <div class="invalid-feedback">
                              Please provide a valid sale.
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom05">Pre-Sale Name</label>
                            <input type="text" class="form-control" id="Pre_sale" placeholder="Pre-Sale" value= "<?php echo $result["Pre_Sale"];?>"required>
                            <div class="invalid-feedback">
                              Please provide a valid Pre-sale.
                            </div>
                          </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-5 mb-3">
                                <label for="validationCustom06">Service</label>
                                <input type="text" class="form-control" id="Service" placeholder="Ex. Cloud[HP]+ Link VRF + Colo[TST]" value= "<?php echo $result["Service"];?>"required>
                                <div class="invalid-feedback">
                                  Please provide a valid Service.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom07">SO</label>
                                <input type="text" class="form-control" id="SO_Num" placeholder="SO" value= "<?php echo $result["SO_Num"];?>"required>
                                <div class="invalid-feedback">
                                  Please provide a valid SO.
                                </div>
                            </div>
                            <div class="input-group col-md-4 mb-3">
                                <div class="form-group">
                                    <label for="validationCustom08">SO file</label>
                                    <input type="file" class="inputstl" id="SO_File" name="sentfile1" value= "<?php echo $result["SO_File"];?>">
                                    <div class="invalid-feedback">
                                        Please provide a valid SO file.
                                    </div>      
                                </div>
                            </div>      
                        </div>
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom09">Start Date</label>
                                <input type="date" class="form-control" id="Start_Date" placeholder="select date" value="<?php echo $result["Start_Con"];?>" required>
                                <div class="valid-feedback">
                                  Looks good!
                                </div>
                              </div>
                              <div class="col-md-4 mb-3">
                                <label for="validationCustom10">End Date</label>
                                <input type="date" class="form-control" id="END_Date" placeholder="select date" value="<?php echo $result["End_Date"];?>" required>
                                <div class="valid-feedback">
                                  Looks good!
                                </div>
                              </div>
                        </div>
                        <!-- <div class="form-group">
        <label for="selphoto" class="col-sm-2 control-label">Diagram :</label>
        <div class="col-sm-5">
          <input type="file" class="inputstl" id="selphoto1" name="sentfile1" >
        </div>
      </div>

        <input type="hidden" value = "<?php echo $result["Confirm_UAT"];?>" name="Action_plan">

	        <div class="form-group">
        <label for="selphoto" class="col-sm-2 control-label">Confirm UAT (Customer&Sales) :</label>
        <div class="col-sm-5">
          <input type="file" class="inputstl" id="selphoto2" name="sentfile2" >
        </div>
      </div>

        <input type="hidden" value = "<?php echo $result["UAT"];?>" name="UAT">

	        <div class="form-group">
        <label for="selphoto" class="col-sm-2 control-label">UAT :</label>
        <div class="col-sm-5">
          <input type="file" class="inputstl" id="selphoto3" name="sentfile3" >
        </div>
      </div> -->

                        <div id="PM" class="form-group">
                            <h2>PM</h2>
                            <div class="form-row">
                                <div class="input-group col-md-4 mb-3">
                                    <div class="form-group">
                                        <label for="validationCustom08">Confirm UAT</label>
                                        <input type="file" class="inputstl" id="Confirm_UAT" name="sentfile3" value="<?php echo $result["Confirm_UAT"];?>">
                                        <div class="invalid-feedback">
                                            Please provide a valid UAT file.
                                        </div>      
                                    </div>
                                </div> 
                                <div class="input-group col-md-4 mb-3">
                                    <div class="form-group">
                                        <label for="validationCustom08">UAT</label>
                                        <input type="file" class="inputstl" id="UAT" name="sentfile4">
                                        <div class="invalid-feedback">
                                            Please provide a valid UAT file.
                                        </div>      
                                    </div>
                                </div>   
                                <div class="col-md-4 mb-3">
                                    <label for="validationCustomPM">Status</label>
                                    <select class="custom-select" id="Status" required>
                                        <option value="in progress">in progress</option>
                                        <option value="UAT">UAT</option>
                                        <option value="complete">complete</option>
                                        <option value="hold">hold</option>
                                        <option value="Cancel">Cancel</option>
                                        <option value="Terminate">Terminate</option>
                                        <option value="Waiting Customer">Waiting Customer</option>
                                        <option value="Waiting Revise SO">Waiting Revise SO</option>                                    
                                    </select>                              
                                    <div class="invalid-feedback">
                                        Please choose a Status.
                                      </div>
                                  </div>
                                  <div class="input-group col-md-4 mb-3" id="common" style="display:none">
                                <div class="form-group">
                                    <label for="validationCustom08">Diagram</label>
                                    <input type="file" class="inputstl" id="Diagram" name="sentfile2">
                                    <div class="invalid-feedback">
                                        Please provide a valid Diagram file.
                                    </div>      
                                </div>
                            </div>  
                            <div class="form-group">
                              <div class="col-sm-offset-2 col-sm-2">
                              <button type="button" class="btn btn-primary btn-xs edit">EDIT</button>
                              </div>
                            </div>
                            </div>
                        </div>
                      </form>

   </div> 
<script>
<?php
			mysqli_close($conn);
?>
</script>   
</body>
</html>