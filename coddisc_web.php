<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$disciplina=($_POST['disciplina']);
	
	$query = "SELECT coddisc FROM disciplina where materia='$disciplina'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$coddisc=$linha['coddisc'];
	echo $coddisc;

	mysqli_close($con);

?>