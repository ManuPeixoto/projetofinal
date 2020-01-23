<?php
include_once 'conexao.php';

header('Content-type:application/json');

$codturma=($_POST['codturma']);

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, "SELECT * FROM reservarsala where codturma='$codturma'");

$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'codhora' => $data['codhora'],
'codsala' => $data['codsala'],
'coddisc' => $data['coddisc']));
echo json_encode(array('reservarsala' => $resultado));

mysqli_close($dbcon);
?>