<?php
   	$server = "localhost";
    $user = "root";
    $db = "takeaway_sys";

    $con = mysqli_connect($server,$user,"",$db);

    if($con)
    {
    }
    else
    {
        echo 'error';
    }
    
?>