<?php
// Configuración de la conexión a la base de datos
$servername = "localhost";
$username = "alvaro"; 
$password = "12345";  
$database = "sistema_votacion";

// Crea la conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verifica si hay errores en la conexión
if ($conn->connect_error) {
    die("La conexión a la base de datos falló: " . $conn->connect_error);
}
?>




