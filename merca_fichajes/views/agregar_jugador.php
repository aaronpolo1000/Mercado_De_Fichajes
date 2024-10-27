


<div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-5 mx-auto text-center">
        <h1 class="text-white">Agregar Jugador</h1>
        <p>Sube un nuevo jugador</p>
      </div>
    </div>
  </div>
</div>

<div class="content" >

<h1 class="logo" id="blanco">Formulario de <span>Inscripcion</span></h1>

<div >
        <div class="contact-form">
  
            <h2>Global Elite</h2>
            <h3>Contacto</h3>
            <form id="formularioUsuario" action="http://localhost:8080/api/users" method="POST">
                <p>
                    <label>Nombre Completo</label>
                    <input type="text" name="nombre">
                </p>
				<p >
				                  <label>Posición</label>
				                  
				                  <select name="posicion" >
				  <option value="Portero">Portero</option>
				  <option value="Defensa">Defensa</option>
				  <option value="Centrocampista">Centrocampista</option>
				  <option value="Delantero">Delantero</option>
				</select>
				          </p>
                <p>
                    <label>Edad/s</label>
                    <input min="18"  maxLength="2" type="number" name="edad">
                </p>
				<p>
				                   <label>Nacionalidad</label>
				                   <input type="text" name="nacionalidad">
				               </p>
							   <p>
							                     <label>Valor de Mercado</label>
							                     <input min="0"   type="number" name="valorMercado">
							                 </p>
               
               
                <p>
				<label>Contrato Hasta</label>
				                   <input min="2024" 	 maxLength="4" type="number" name="contratoHasta">
                </p>

               
                <!--BORRAR SI ES NECESARIO-->
                <p>
                    <label>Equipo</label>
                    <select name="clubId" >
                    <?php
					$conn = mysqli_connect('localhost','root','','testeo');
					if(!$conn){
					    die('Error de Conexión (' . mysqli_connect_errno() . ') '
					        . mysqli_connect_error());
					}

					 
					$sql1="SELECT id, nombre FROM equipos";
					$res1 = mysqli_query($conn, $sql1);
					   
					if (!$res1) {
					    die('Error de Consulta: ' . mysqli_errno($conn));
					} 
					$prov = mysqli_fetch_all($res1,MYSQLI_ASSOC);
					
					
					 foreach($prov as $provincia){ ?>
                    <option value=<?php echo $provincia['id'] ?>><?php echo $provincia['nombre']?></option>
    <?php } ?>
  </select>
                    
                </p>
    
                <p class="block">
                    <button type="submit" id="blanco">
                        Enviar
                    </button>
                 
                </p>
            </form>
        </div>
   
    </div>

</div>
<script>
        function redirigir() {
            // Espera a que el formulario se envíe y luego redirige
            setTimeout(() => {
                location.href = "/index.php";
            }, 1000); // Redirige después de 1 segundo para dar tiempo a que el backend reciba los datos
            return true; // Permite que el formulario se envíe
        }
    </script>
<style>* {
    box-sizing: border-box;
}

body {
    background: black;
    background-image: url(../img/fondo.jpg);
    background-size: cover;
    color: black;
    line-height: 1.6;
    font-family: 'Quicksand', sans-serif;
 
}

h2{
    text-align: center;
}

.container {
   
    margin-left: auto;
    margin-right: auto;
  
}

ul {
    list-style: none;
    padding: 0;
}

#blanco{
    color: white;
}

.logo {
    text-align: center;
    font-size: 3em;
}

.logo span {
    color: #B70E21;
}

.contact-wrapper {
    box-shadow: 0 0 20px 0 red;
}

.contact-form {
    background: white;
}

.contact-form form {
    display: grid;
    grid-template-columns: 1fr 1fr;
}

.contact-form form label {
    display: block;
}

.contact-form form p {
    margin: 0;
    padding: 1em;
}

.contact-form form .block {
    grid-column: 1 / 3;
}

.contact-form form button,
.contact-form form input,
.contact-form form textarea {
    width: 100%;
    padding: .7em;
    border: none;
    background: none;
    outline: 0;
    color: black;
    border-bottom: 1px solid #d63031;
}

.contact-form form button {
    background: #B70E21;
    border: 0;
    text-transform: uppercase;
    padding: 1em;
}

.contact-form form button:hover,
.contact-form form button:focus {
    background: #d63031;
    color: #fff;
    transition: background-color 1s ease-out;
    outline: 0;
}

/* CONTACT INFO */
.contact-info {
    background: whitesmoke;
}

.contact-info h4, .contact-info ul, .contact-info p {
    text-align: center;
    margin: 0 0 1rem 0;
}</style>