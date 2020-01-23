<?php
include_once 'conexao.php';

header('Content-type:application/json');

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, 'SELECT * FROM sala');
$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'codsala' => $data['codsala'],
'disponivel' => $data['disponivel'],
'codhora' => $data['codhora']));
echo json_encode(array('sala' => $resultado));

mysqli_close($dbcon);
?>