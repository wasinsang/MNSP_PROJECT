<?php

//delete_data.php

include('connect_db.php');

if(isset($_POST["id"]))
{
    if($_POST["kind"] == "BCP")
    {
        if($_POST["name"] == "data")
        {
            $query = "
            DELETE FROM BCP 
            WHERE Num_ID = '".$_POST["id"]."';
            DELETE FROM forum_bcp 
            WHERE Num_ID = '".$_POST["id"]."'
            ";    
        }
        elseif($_POST["name"] == "log")
        {
            $query = "
            DELETE FROM forum_bcp 
            WHERE FR_ID = '".$_POST["id"]."'
            ";    
        }
    }
    if($_POST["kind"] == "Report")
    {
        if($_POST["name"] == "data")
        {
            $query = "
            DELETE FROM Report 
            WHERE Num_ID = '".$_POST["id"]."';
            DELETE FROM forum_report
            WHERE Num_ID = '".$_POST["id"]."'
            ";    
        }
        elseif($_POST["name"] == "log")
        {
            $query = "
            DELETE FROM forum_report 
            WHERE FR_ID = '".$_POST["id"]."'
            ";    
        }
    }
    if($_POST["kind"] == "MNSP")
    {
        if($_POST["name"] == "data")
        {
            $query = "
            DELETE FROM MNSP 
            WHERE Num_ID = '".$_POST["id"]."';
            DELETE FROM forum_mnsp
            WHERE Num_ID = '".$_POST["id"]."'
            ";    
        }
        elseif($_POST["name"] == "log")
        {
            $query = "
            DELETE FROM forum_mnsp 
            WHERE FR_ID = '".$_POST["id"]."'
            ";    
        }
    }
    if($_POST["kind"] == "PM")
    {
        if($_POST["name"] == "data")
        {
            $query = "
            DELETE FROM pm_mnsp 
            WHERE Num_ID = '".$_POST["id"]."';
            DELETE FROM forum_pm
            WHERE Num_ID = '".$_POST["id"]."'
            ";    
        }
        elseif($_POST["name"] == "log")
        {
            $query = "
            DELETE FROM forum_pm 
            WHERE FR_ID = '".$_POST["id"]."'
            ";    
        }
    }
 $statement = $connect->prepare($query);
 $statement->execute();
}

?>