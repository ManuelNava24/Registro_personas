<?php
include_once "../bd/base_de_datos.php";

$consulta = $base_de_datos->query("
    SELECT 
        id,
        nombre_completo,
        fecha_nacimiento,
        correo_electronico,
        pass,
        TIME(hora_registro) as hora_registro,  
        DATE(fecha_registro) as fecha_registro
    FROM personas 
    ORDER BY id ASC
");
$registros = $consulta->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../estilos/styles.css">
    <title>Registros de Personas</title>
</head>
<body>
    <div class="contenedor-regresar">
        <h1 class="encabezado">Tabla de Registros de Usuarios</h1>
        <a href="../index.html" class="boton-regresar"> Regresar</a>    
    </div>
    <table class="tabla-registros">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre Completo</th>
                <th>Fecha Nacimiento</th>
                <th>Correo Electrónico</th>
                <th>Contraseña</th>
                <th>Fecha Registro</th>
                <th>Hora Registro</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($registros as $registro): 
                $fecha_nacimiento = DateTime::createFromFormat('Y-m-d', $registro['fecha_nacimiento'])->format('d/m/Y');
                $fecha_registro = DateTime::createFromFormat('Y-m-d', $registro['fecha_registro'])->format('d/m/Y');
                
                $hora_registro = DateTime::createFromFormat('H:i:s', $registro['hora_registro'])->format('h:i A');
            ?>
            <tr>
                <td><?php echo htmlspecialchars($registro['id']); ?></td>
                <td><?php echo htmlspecialchars($registro['nombre_completo']); ?></td>
                <td><?php echo htmlspecialchars($fecha_nacimiento); ?></td>
                <td><?php echo htmlspecialchars($registro['correo_electronico']); ?></td>
                <td><?php echo htmlspecialchars($registro['pass']); ?></td>
                <td><?php echo htmlspecialchars($fecha_registro); ?></td>
                <td><?php echo htmlspecialchars($hora_registro); ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>
</html>