<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buscador de Jugadores</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .card {
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1 class="mt-5">Buscador de Jugadores</h1>
        <div class="input-group mb-3">
            <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre del jugador"
                aria-label="Nombre del jugador">
            <div class="input-group-append">
                <button class="btn btn-primary" id="searchButton">Buscar</button>
            </div>
        </div>

        <div id="playerCard" class="card d-none">
            <div class="card-body">
                <img id="playerImage" src="" alt="Jugador" class="card-img-top" style="width: 100px;">
                <h5 class="card-title" id="playerName"></h5>
                <p class="card-text" id="playerPrice"></p>
                <p class="card-text" id="playerTeam"></p>
                <button class="btn btn-success" id="buyButton">Comprar</button>
            </div>
        </div>
    </div>

    <script>

        $('#searchButton').on('click', function () {
            var nombre = $('#nombre').val();

            $.ajax({
                url: `http://localhost:8080/api/users/${encodeURIComponent(nombre)}`, // Adjust URL to your endpoint

                method: 'GET',
                success: function (response) {
                    // Assuming response is a string or HTML content
                    console.log(response)
                    document.getElementById("playerImage").src = "https://via.placeholder.com/100";
                    document.getElementById("playerName").innerText = response.nombre;
                    document.getElementById("playerPrice").innerText = `Precio: ${response.valorMercado}`;
                    document.getElementById("playerTeam").innerText = `Nacionalidad: ${response.nacionalidad}`;
                    document.getElementById("playerCard").classList.remove("d-none");
                },
                error: function (xhr, status, error) {
                    $('#response').html('<p class="text-danger">Error: ' + error + '</p>');
                }
            });
        });
    </script>
</body>

</html>