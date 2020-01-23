<?php

	include_once 'conexao.php';
	
	$con = mysqli_connect("localhost","root","","bdapp");
	mysqli_set_charset($con,'utf8');
	
	$codreserva=($_POST['codreserva']);
	
	$query = "SELECT codturma FROM reservarsala where codreserva='$codreserva'" or die(mysql_error());
	$resultado = mysqli_query($con,$query);
	$linha = mysqli_fetch_array($resultado);
	$codturma=$linha['codturma'];
	echo $codturma;

	mysqli_close($con);
	
?>