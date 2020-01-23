<?php
include_once 'conexao.php';

$codhora = @$_POST['codhora'];

header('Content-type:application/json');

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, "SELECT * FROM sala where codhora='$codhora'");
$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'codsala' => $data['codsala'],
'Sala' => $data['Sala'],
'disponivel' => $data['disponivel']));
echo json_encode(array('sala' => $resultado));

mysqli_close($dbcon);
?>