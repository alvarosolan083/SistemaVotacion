<?php

$url = $_GET['url'];

// Este script PHP actúa como intermediario para acceder a una API desde el lado del servidor.
// Realiza una solicitud a la API y devuelve la respuesta al cliente que hizo la petición.

$response = file_get_contents($url);


echo $response;
?>
