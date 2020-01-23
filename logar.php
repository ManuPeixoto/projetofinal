<?php

	include_once 'conexao.php';
	
	$id=$_POST['id'];
	$senha=$_POST['senha'];
	$funcao=$_POST['funcao'];
	
	if($funcao == "Professor")
	{
	$sql1 = $dbcon->query("SELECT * FROM professor WHERE codprof='$id' AND senha='$senha'");
	
	if(mysqli_num_rows($sql1) > 0) 
	{
		echo "login_ok";
	} else {
		echo "login_erro";
	}
}
	
else if($funcao == "Aluno")
	{
	$sql2 = $dbcon->query("SELECT * FROM aluno WHERE codaluno='$id' AND senha='$senha'");
	
	if(mysqli_num_rows($sql2) > 0) 
	{
		echo "login_ok";
	} else {
		echo "login_erro";
	}
}

?>