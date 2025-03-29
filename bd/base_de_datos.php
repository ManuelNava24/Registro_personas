<?php 
$contraseña = "";
$usuario = "root";
$nombre_base_de_datos = "registro_personas";

try {
    $base_de_datos = new PDO('mysql:host=localhost;dbname=' . $nombre_base_de_datos, $usuario, $contraseña);
    
    $base_de_datos->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} 
catch(Exception $e) {
    echo "Error al conectar a la base de datos: " . $e->getMessage();
    echo "<br>Detalles: ";
    echo "<br>- Usuario: " . $usuario;
    echo "<br>- Base de datos: " . $nombre_base_de_datos;
    echo "<br>- Host: localhost";
}
?>