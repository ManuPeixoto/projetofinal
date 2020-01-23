<?php

	include_once 'conexao.php';
	
	$codhora=$_POST['codhora'];
	$codsala=$_POST['codsala'];
	
	$sql1 = $dbcon->query("SELECT * FROM reservarsala WHERE codhora='$codhora' AND codsala='$codsala'");
	
	if(mysqli_num_rows($sql1) > 0) 
	{
		echo "ocupada";
	} else {
		echo "ok";
	}

?>