<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$codsala = ($_POST['codsala']);
	$disponivel=($_POST['disponivel']);
	
	$query = "SELECT disponivel FROM sala where codsala='$codsala'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$disponivel=$linha['disponivel'];
	echo $disponivel;

	mysqli_close($con);

?>