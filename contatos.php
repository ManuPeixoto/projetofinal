<?php
include_once 'conexao.php';

header('Content-type:application/json');

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, 'SELECT * FROM professor');
$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'nome' => $data['nome'],
'email' => $data['email']));
echo json_encode(array('professor' => $resultado));

mysqli_close($dbcon);
?>