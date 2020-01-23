<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$codturma=($_POST['codturma']);
	
	$query = "SELECT classe FROM turma where codturma='$codturma'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$classe=$linha['classe'];
	echo $classe;

	mysqli_close($con);

?>