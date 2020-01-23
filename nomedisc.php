<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$coddisc=($_POST['coddisc']);
	
	$query = "SELECT materia FROM disciplina where coddisc='$coddisc'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$materia=$linha['materia'];
	echo $materia;

	mysqli_close($con);

?>