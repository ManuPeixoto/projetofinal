<?php
include_once 'conexao.php';

//header('Content-type:application/json');

$matricula=($_POST['matricula']);

mysqli_set_charset($dbcon,'utf8');

$query = mysqli_query($dbcon, "SELECT * FROM reservarsala where codprof='$matricula'");
$resultado = array();

while($data = mysqli_fetch_assoc($query))
array_push($resultado, array(
'codprof' => $data['codprof'],
'codreserva' => $data['codreserva']));
echo json_encode(array('reservarsala' => $resultado));

mysqli_close($dbcon);
?>