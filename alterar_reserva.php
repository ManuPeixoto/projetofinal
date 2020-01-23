<?php

	include_once 'conexao.php';
	
	$codsala = $_POST['codsala'];
	$codturma = $_POST['codturma'];
	$matricula = $_POST['matricula'];
	$coddisc = $_POST['coddisc'];
	$codhora = $_POST['codhora'];
	
	$sql = $dbcon->query("INSERT INTO reservarsala(codsala,codturma,codprof,coddisc,codhora) VALUES ('$codsala','$codturma','$matricula','$coddisc','$codhora')");
		
	if($sql) {
		echo "registro_ok";
	} else {
		echo "registro_erro";
	}
	
?>