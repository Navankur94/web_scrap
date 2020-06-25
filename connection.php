<?php

 	$mysqli_dbname="scrap_industry_data";
	$mysqli_dbpass="test";
	$mysqli_dbIp="localhost";
	$mysqli_dbUser="root";
    
    $host = $mysqli_dbIp;
    $user = $mysqli_dbUser;
    $database= $mysqli_dbname;
    $password = $mysqli_dbpass;
	$con=mysqli_connect($mysqli_dbIp,$mysqli_dbUser,$mysqli_dbpass,$mysqli_dbname);
	mysqli_query($con,"SET SESSION MAX_EXECUTION_TIME=30000;");  
    if (mysqli_connect_errno())
    {
        http_response_code(408);
        echo("Oops! Server seems to be busy! Try later");
        die();
    }
?>