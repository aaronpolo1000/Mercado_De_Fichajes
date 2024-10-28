
<div class="site-wrap">
  
  <div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
      <div class="site-mobile-menu-close">
        <span class="icon-close2 js-menu-toggle"></span>
      </div>
    </div>
    <div class="site-mobile-menu-body"></div>
  </div>


  

  <div class="hero overlay" style="background-image: url('images/bg_3.jpg');">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-5 ml-auto">
          <h1 class="text-white">Jugadores</h1>
          <p>Busca un jugador para vender o comprar</p>
          <div id="date-countdown"></div>
       
        </div>
      </div>
    </div>
  </div>

  
  
  <div class="container">
    

    <div class="row">
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
                <h5 class="card-title" style="color:black;" id="playerName"></h5>
                <p class="card-text" id="playerPrice"></p>
                <p class="card-text" id="playerTeam"></p>
                <button class="btn btn-success" id="sellButton" style="display:none;">Vender</button>
                <button class="btn btn-success" id="buyButton" style="display:none;">Comprar</button>
            </div>
        </div>
        <div style="display: none; color:black;"  id="venta">
            <h1>Vendido con exito</h1>
        </div>
        <div style="display: none; color:black;" id="compra">
            <h1>Comprado con exito</h1>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        var jugador = {};
        $('#searchButton').on('click', function () {
            var nombre = $('#nombre').val();

            $.ajax({
                url: `http://localhost:8080/api/users/${encodeURIComponent(nombre)}`, // Adjust URL to your endpoint

                method: 'GET',
                success: function (response) {
                    // Assuming response is a string or HTML content
                    console.log(response)
                    jugador = response;
                    document.getElementById("playerImage").src = "https://via.placeholder.com/100";
                    document.getElementById("playerName").innerText = response.nombre;
                    document.getElementById("playerPrice").innerText = `Precio: ${response.valorMercado}`;
                    document.getElementById("playerTeam").innerText = `Nacionalidad: ${response.nacionalidad}`;
                    document.getElementById("buyButton").style.display = "none";
                    document.getElementById("sellButton").style.display = "none";
                    if(response.clubId == 1){
                        document.getElementById("sellButton").style.display = "block";
                    }
                    else{
                        document.getElementById("buyButton").style.display = "block";

                    }
                    document.getElementById("playerCard").classList.remove("d-none");
                    document.getElementById("venta").style.display = "none";
                    document.getElementById("compra").style.display = "none";

                },
                error: function (xhr, status, error) {
                    $('#response').html('<p class="text-danger">Error: ' + error + '</p>');
                }
            });
        });
        $('#sellButton').on('click', function () {
            var nombre = $('#playerName').val();

            $.ajax({
                url: `http://localhost:8080/api/users/${encodeURIComponent(jugador.id)}`, // Adjust URL to your endpoint
                method: 'DELETE',
                success: function (response) {
                    // Assuming response is a string or HTML content
                    console.log(response)
                    jugador = {};
                    document.getElementById("playerCard").classList.add("d-none");
                    document.getElementById("venta").style.display = "block";
                    document.getElementById("venta").style.color = "black";
                    
                },
                error: function (xhr, status, error) {
                    $('#response').html('<p class="text-danger">Error: ' + error + '</p>');
                }
            });
        });
        $('#buyButton').on('click', function () {
            var nombre = $('#playerName').val();
            jugador.clubId= 1
            $.ajax({
                url: `http://localhost:8080/api/users/${encodeURIComponent(jugador.id)}`, // Adjust URL to your endpoint
                method: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(jugador),
                success: function (response) {
                    // Assuming response is a string or HTML content
                    console.log(response)
                    jugador = {};
                    document.getElementById("playerCard").classList.add("d-none");
                    document.getElementById("compra").style.display = "block";
                    document.getElementById("compra").style.color = "black";
                    
                },
                error: function (xhr, status, error) {
                    $('#response').html('<p class="text-danger">Error: ' + error + '</p>');
                }
            });
        });
    </script>
    </div>
  </div>


  <div class="latest-news">
    <div class="container">
      <div class="row">
        <div class="col-12 title-section">
          <h2 class="heading">Latest News</h2>
        </div>
      </div>
      <div class="row no-gutters">
        <div class="col-md-4">
          <div class="post-entry">
            <a href="#">
              <img src="images/img_1.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="caption">
              <div class="caption-inner">
                <h3 class="mb-3">Romolu to stay at Real Nadrid?</h3>
                <div class="author d-flex align-items-center">
                  <div class="img mb-2 mr-3">
                    <img src="images/person_1.jpg" alt="">
                  </div>
                  <div class="text">
                    <h4>Mellissa Allison</h4>
                    <span>May 19, 2020 &bullet; Sports</span>
                  </div>
                </div>
              </div>
            </div> 
          </div>
        </div>
        <div class="col-md-4">
          <div class="post-entry">
            <a href="#">
              <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="caption">
              <div class="caption-inner">
                <h3 class="mb-3">Kai Nets Double To Secure Comfortable Away Win</h3>
                <div class="author d-flex align-items-center">
                  <div class="img mb-2 mr-3">
                    <img src="images/person_1.jpg" alt="">
                  </div>
                  <div class="text">
                    <h4>Mellissa Allison</h4>
                    <span>May 19, 2020 &bullet; Sports</span>
                  </div>
                </div>
              </div>
            </div> 
          </div>
        </div>
        <div class="col-md-4">
          <div class="post-entry">
            <a href="#">
              <img src="images/img_2.jpg" alt="Image" class="img-fluid">
            </a>
            <div class="caption">
              <div class="caption-inner">
                <h3 class="mb-3">Dogba set for Juvendu return?</h3>
                <div class="author d-flex align-items-center">
                  <div class="img mb-2 mr-3">
                    <img src="images/person_1.jpg" alt="">
                  </div>
                  <div class="text">
                    <h4>Mellissa Allison</h4>
                    <span>May 19, 2020 &bullet; Sports</span>
                  </div>
                </div>
              </div>
            </div> 
          </div>
        </div>
      </div>

    </div>
  </div>
  
  <div class="site-section bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="widget-next-match">
            <div class="widget-title">
              <h3>Next Match</h3>
            </div>
            <div class="widget-body mb-3">
              <div class="widget-vs">
                <div class="d-flex align-items-center justify-content-around justify-content-between w-100">
                  <div class="team-1 text-center">
                    <img src="images/logo_1.png" alt="Image">
                    <h3>Football League</h3>
                  </div>
                  <div>
                    <span class="vs"><span>VS</span></span>
                  </div>
                  <div class="team-2 text-center">
                    <img src="images/logo_2.png" alt="Image">
                    <h3>Soccer</h3>
                  </div>
                </div>
              </div>
            </div>

            <div class="text-center widget-vs-contents mb-4">
              <h4>World Cup League</h4>
              <p class="mb-5">
                <span class="d-block">December 20th, 2020</span>
                <span class="d-block">9:30 AM GMT+0</span>
                <strong class="text-primary">New Euro Arena</strong>
              </p>

              <div id="date-countdown2" class="pb-1"></div>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          
          <div class="widget-next-match">
            <table class="table custom-table">
              <thead>
                <tr>
                  <th>P</th>
                  <th>Team</th>
                  <th>W</th>
                  <th>D</th>
                  <th>L</th>
                  <th>PTS</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td><strong class="text-white">Football League</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>2</td>
                  <td><strong class="text-white">Soccer</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>3</td>
                  <td><strong class="text-white">Juvendo</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>4</td>
                  <td><strong class="text-white">French Football League</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>5</td>
                  <td><strong class="text-white">Legia Abante</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>6</td>
                  <td><strong class="text-white">Gliwice League</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>7</td>
                  <td><strong class="text-white">Cornika</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
                <tr>
                  <td>8</td>
                  <td><strong class="text-white">Gravity Smash</strong></td>
                  <td>22</td>
                  <td>3</td>
                  <td>2</td>
                  <td>140</td>
                </tr>
              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div> <!-- .site-section -->

  <div class="site-section">
    <div class="container">
      <div class="row">
        <div class="col-6 title-section">
          <h2 class="heading">Videos</h2>
        </div>
        <div class="col-6 text-right">
          <div class="custom-nav">
          <a href="#" class="js-custom-prev-v2"><span class="icon-keyboard_arrow_left"></span></a>
          <span></span>
          <a href="#" class="js-custom-next-v2"><span class="icon-keyboard_arrow_right"></span></a>
          </div>
        </div>
      </div>


      <div class="owl-4-slider owl-carousel">
        <div class="item">
          <div class="video-media">
            <img src="images/img_1.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Dogba set for Juvendu return?</h3>
              </div>
            </a>
          </div>
        </div>
        <div class="item">
          <div class="video-media">
            <img src="images/img_2.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Kai Nets Double To Secure Comfortable Away Win</h3>
              </div>
            </a>
          </div>
        </div>
        <div class="item">
          <div class="video-media">
            <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Romolu to stay at Real Nadrid?</h3>
              </div>
            </a>
          </div>
        </div>

        <div class="item">
          <div class="video-media">
            <img src="images/img_1.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Dogba set for Juvendu return?</h3>
              </div>
            </a>
          </div>
        </div>
        <div class="item">
          <div class="video-media">
            <img src="images/img_2.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Kai Nets Double To Secure Comfortable Away Win</h3>
              </div>
            </a>
          </div>
        </div>
        <div class="item">
          <div class="video-media">
            <img src="images/img_3.jpg" alt="Image" class="img-fluid">
            <a href="https://vimeo.com/139714818" class="d-flex play-button align-items-center" data-fancybox>
              <span class="icon mr-3">
                <span class="icon-play"></span>
              </span>
              <div class="caption">
                <h3 class="m-0">Romolu to stay at Real Nadrid?</h3>
              </div>
            </a>
          </div>
        </div>

      </div>

    </div>
  </div>

  <div class="container site-section">
    <div class="row">
      <div class="col-6 title-section">
        <h2 class="heading">Our Blog</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6">
        <div class="custom-media d-flex">
          <div class="img mr-4">
            <img src="images/img_1.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="text">
            <span class="meta">May 20, 2020</span>
            <h3 class="mb-4"><a href="#">Romolu to stay at Real Nadrid?</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt saepe tempora dolorem.</p>
            <p><a href="#">Read more</a></p>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="custom-media d-flex">
          <div class="img mr-4">
            <img src="images/img_3.jpg" alt="Image" class="img-fluid">
          </div>
          <div class="text">
            <span class="meta">May 20, 2020</span>
            <h3 class="mb-4"><a href="#">Romolu to stay at Real Nadrid?</a></h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus deserunt saepe tempora dolorem.</p>
            <p><a href="#">Read more</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>



 

</div>
<!-- .site-wrap -->

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.fancybox.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jquery.mb.YTPlayer.min.js"></script>


<script src="js/main.js"></script>

