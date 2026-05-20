<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pokedex</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/index.css">
    <style>
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<header>
    <div class="header-container w3-red">
        
        <div class="logo-container">
            <h1>Pokedex</h1>
        </div>

        <a href="login.php" class="login-container">
            <i class="bi bi-person-circle"></i>
            <h3>Login</h3>
        </a>

    </div>
</header>


<div class="container w3-margin-top">
    <form
        action="index.php"
        method="GET"
        id="search-form"
        enctype="multipart/form-data"
        class="w3-card-4 w3-padding search-form">

        <div class="search-container" style="display: flex; align-items: center; gap: 10px">

            <input 
                type="text" 
                id="nombre" 
                name="nombre" 
                class="w3-input w3-border search-input"
                placeholder="Busca un Pokémon..."
                >

            <button type="submit" class="search-btn">
                <i class="bi bi-search"></i>
            </button>

        </div>

    </form>
</div>

<div class="container w3-margin-top">
<div id="resultados" class="resultados"></div>
</div>

<script src="js/indexScript.js"></script>
</body>
</html>



<!--Realizar una web que represente una Pokédex (listado de pokémon) y permita realizar
búsqueda sobre la misma. Además, el sistema debe permitir que el administrador se loguee
al mismo y pueda realizar altas, bajas y modificaciones de los elementos. Ejemplo de donde
pueden tomar datos: http://es.pokemon.wikia.com/wiki/Lista_de_Pok%C3%A9mon
Tip: Si no les agrada o no conocen pokémon, pueden reemplazar el contenido por el
de otro tema que los motive, siempre que se mantengan todas las funcionalidades
(Ej: Música, Jugadores de Fútbol, auto fantástico, Meteoro, etc.)
Casos de uso:
- Si se busca un pokemon existente, mostrar sólo ese.
- Si se busca un pokemon inexistente, informar "pokemon no encontrado" y - mostrar la lista
de todos ellos.
- Si no se busca nada, mostrar la lista de todos ellos
- Al ingresar al pokemon buscado, mostrar todos sus datos en una página completa
- El sistema debe permitir loguear usuarios a modo de administradores
- El tipo de pokemon (fuego, agua, hierba) debe mostrarse con una imágen. No como texto
- El usuario logueado: puede dar de alta un pokemon
- El usuario logueado: puede dar de baja un pokemon 
- El usuario logueado: puede editar un pokemon -->