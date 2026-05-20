const input = document.getElementById("nombre");
const resultados = document.getElementById("resultados");
const form = document.getElementById("search-form")

window.addEventListener("load", () => {
    mostrarTodosLosPokemon();
})


form.addEventListener("submit", (e) => {
    e.preventDefault();
    let busquedaDelUsuario = input.value;

    if(busquedaDelUsuario == 0){
        mostrarTodosLosPokemon();
    }

    buscarUnPokemon(busquedaDelUsuario);
});


input.addEventListener("keyup", () => {

    let busquedaDelUsuario = input.value;

    if(busquedaDelUsuario.length == 0){
        mostrarTodosLosPokemon();
    }

    if(busquedaDelUsuario.length < 3){
        return;
    }

    buscarUnPokemon(busquedaDelUsuario);

});
//Funciones
function mostrarTodosLosPokemon(){

    fetch("mostrarTodosLosPokemon.php")
    .then(response => response.text())
    .then(data => {
        resultados.innerHTML = data;
    });
}

function buscarUnPokemon(busqueda){
    fetch("buscar.php?nombre=" + busqueda)
    .then(response => response.text())
    .then(data => {
        resultados.innerHTML = data;
    });
}