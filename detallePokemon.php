<?php

$id = $_GET["id"] ?? null;

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle Pokémon</title>
</head>
<body>

    <h1>Detalle del Pokémon</h1>

    <p>ID del pokemon: <?php echo $id; ?></p>

</body>
</html>