<?php

	$codsala=@$_POST['codsala'];
	$disponivel=@$_POST['disponivel'];
	
	/*$codsala=1;
	$disponivel="ocupada";*/
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$sql = "update sala
	set
	disponivel = '$disponivel'
	where codsala = '$codsala'
	";
	
	$result = mysqli_query($con,$sql) or die(mysqli_error()."<hr/>Line: "._LINE_."<br/>$sql");
	
	if($result===true){
		echo "OK_UPDATE";
	}
	
	mysqli_close($con);
?>