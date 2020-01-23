<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$horario=($_POST['horario']);
	
	$query = "SELECT codhora FROM tbhorario where hora='$horario'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$codhora=$linha['codhora'];
	echo $codhora;

	mysqli_close($con);
	
?>