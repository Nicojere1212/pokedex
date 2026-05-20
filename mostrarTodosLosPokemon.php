<?php

include("Config/database.php");


$sql = "SELECT 
    p.*,
    t1.descripcion AS tipo1_nombre,
    t1.imagen AS tipo1_imagen,
    t2.descripcion AS tipo2_nombre,
    t2.imagen AS tipo2_imagen
FROM pokemon p
LEFT JOIN tipo t1 ON p.id_tipo1 = t1.id
LEFT JOIN tipo t2 ON p.id_tipo2 = t2.id";
$resultado = mysqli_query($conexion, $sql);
while($fila = mysqli_fetch_assoc($resultado)) {
echo "<div class='w3-card w3-margin w3-padding' style='width:230px; 
display:inline-block; vertical-align:top; text-align:center;'>";

echo "<a href='detallePokemon.php?id=" .  $fila['id'] . "'" ."class='pokemon-card'>" .  "<img src='https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/"
. $fila['id'] . ".png' style='width:120px;'>";

echo "<h3>" . $fila['nombre'] . "</h3>" . "</a>";


echo "<img src='img/" . $fila['tipo1_imagen'] . "' style='width:25px;'>";

if ($fila['id_tipo2'] != null) {
    echo "<img src='img/" . $fila['tipo2_imagen'] . "' style='width:25px;'>";
}

echo "</div>";
    }

mysqli_close($conexion);
?>