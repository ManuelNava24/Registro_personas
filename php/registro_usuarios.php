<?php
if(!isset($_POST["nombre_completo"]) || 
    !isset($_POST["fecha_nacimiento"]) ||
    !isset($_POST["correo_electronico"]) ||
    !isset($_POST["pass"])
) {
    exit("Faltan campos obligatorios");
}

include_once "../bd/base_de_datos.php";

$nombre_completo = $_POST["nombre_completo"];
$fecha_nacimiento = $_POST["fecha_nacimiento"];
$correo_electronico = $_POST["correo_electronico"];
$pass = $_POST["pass"]; 

$insertar = $base_de_datos->prepare("
    INSERT INTO personas (
        nombre_completo, 
        fecha_nacimiento, 
        correo_electronico, 
        pass, 
        hora_registro, 
        fecha_registro
    ) VALUES (?, ?, ?, ?, NOW(), NOW())");

$resultado_insertar = $insertar->execute([
    $nombre_completo, 
    $fecha_nacimiento, 
    $correo_electronico, 
    $pass 
]);

// Manejo de resultados
if($resultado_insertar === TRUE){
    echo "
    <script>
        alert('Registro exitoso. Tu cuenta ha sido creada.');
        window.location.href = '../index.html';
    </script>";
} else {
    echo "
    <script>
        alert('Error al registrar. Por favor intenta nuevamente.');
        window.location.href = 'registro_usuarios.php';
    </script>";
}
?>