<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$matricula=($_POST['matricula']);
	
	$query = "SELECT codturma FROM aluno where codaluno='$matricula'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$codturma=$linha['codturma'];
	echo $codturma;

	mysqli_close($con);

?>