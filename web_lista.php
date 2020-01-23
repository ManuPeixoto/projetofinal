<?php
include_once 'conexao.php';

header('Content-type:application/json');

$codhora=($_POST['codhora']);

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, "SELECT * FROM reservarsala where codhora='$codhora'");
//$query = mysqli_query($dbcon, "SELECT * FROM reserva");
$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'codreserva' => $data['codreserva'],
'codsala' => $data['codsala']));
echo json_encode(array('reservarsala' => $resultado));

mysqli_close($dbcon);
?>