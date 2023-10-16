<?php
// Este script PHP procesa los datos del formulario de votación y los almacena en la base de datos.
// Verifica que se haya enviado una solicitud POST y valida los datos recibidos.
// También verifica el formato del RUT, comprueba si ya existe un voto con el mismo RUT y realiza la inserción en la base de datos.

include 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibe los datos del formulario
    $nombre = $_POST['nombre'];
    $alias = $_POST['alias'];
    $rut = $_POST['rut'];
    $email = $_POST['email'];
    $region = $_POST['region'];
    $comuna = $_POST['comuna'];
    $candidato = $_POST['candidato'];

    // Verifica el formato del RUT
    if (preg_match('/^[0-9]{7,8}-[0-9kK]{1}$/', $rut)) {
        
    } else {
        echo "El formato del RUT es inválido";
        
        return; 
    }

    // Verifica si se seleccionaron opciones en 'como_se_entero'
    if (isset($_POST['como_se_entero'])) {
        $como_se_entero = implode(", ", $_POST['como_se_entero']);
    } else {
        $como_se_entero = ''; 
    }

    // Verifica si ya existe un voto con el mismo RUT
    $rut = $_POST['rut'];
    $checkQuery = "SELECT * FROM votos WHERE rut = '$rut'";
    $result = $conn->query($checkQuery);

    if ($result->num_rows > 0) {
        echo "Ya se ha registrado un voto con el mismo RUT.";
    } else {
        // Prepara y ejecuta la consulta SQL para insertar los datos en la base de datos
        $sql = "INSERT INTO votos (nombre, alias, rut, email, region, comuna, candidato, como_se_entero)
                VALUES ('$nombre', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$como_se_entero')";

        if ($conn->query($sql) === TRUE) {
            echo "Voto registrado exitosamente";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }

    // Cierra la conexión a la base de datos
    $conn->close();
} else {
    echo "Acceso no autorizado";
}
?>
