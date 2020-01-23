<?php

	$codsala=@$_POST['codsala'];
	$codhora=@$_POST['codhora'];
	
	//$codsala=1;
	//$codhora=1;
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$sql = "update sala
	set
	codhora = '$codhora'
	where codsala = '$codsala'
	";
	
	$result = mysqli_query($con,$sql) or die(mysqli_error()."<hr/>Line: "._LINE_."<br/>$sql");
	
	if($result===true){
		echo "OK";
	}
	
	mysqli_close($con);
?>