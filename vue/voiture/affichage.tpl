<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="Vue/images/favicon.png" type="image/x-icon">

  <title>Roue Libre</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="Vue/css/bootstrap.css" />
  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="./Vue/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="Vue/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="Vue/css/responsive.css" rel="stylesheet" />

</head>

<body>

  <div class="hero_area">
    <div class="hero_social">
      <a href="">
        <i class="fa fa-facebook" aria-hidden="true"></i>
      </a>
      <a href="">
        <i class="fa fa-twitter" aria-hidden="true"></i>
      </a>
      <a href="">
        <i class="fa fa-linkedin" aria-hidden="true"></i>
      </a>
      <a href="">
        <i class="fa fa-instagram" aria-hidden="true"></i>
      </a>
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
              Roue Libre
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="">Accueil<!-- <span class="sr-only">(current)</span>--></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"> Voiture </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"> A propos </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Contactez nous</a>
              </li>
            </ul>
            <div class="user_option-box">
              <?php
            if(!isset($_SESSION['profil'])){
              echo('<a href="index.php?controle=utilisateur&action=connexion">');
              echo('<i class="fa fa-user" aria-hidden="true"></i>');
              echo('</a>');
            }
            else{
              
              
                
              echo('<a href="index.php?controle=utilisateur&action=deconnexion">');
              echo('<i class="fa fa-trash" aria-hidden="true"></i>');
              echo('</a>');

              if($_SESSION['profil']['role']==0){
                echo('<a href="index.php?controle=voiture&action=ajout">');
              echo('<i class="fa fa-plus" aria-hidden="true"></i>');
              echo('</a>');
              }
              else{
                echo('<a href="index.php?controle=utilisateur&action=location">');
              echo('<i class="fa fa-user" aria-hidden="true"></i>');
              echo('</a>');

                echo('<a href="index.php?controle=panier&action=panier">');
                echo('<i class="fa fa-cart-plus" aria-hidden="true"></i>');
                echo('</a>');
              }
              
            }
              
              
            
            ?>
              
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Ferrari 488 Spider
                    </h1>
                    <p>
                      Venez découvrir et louer nos voitures !
                    </p>
                    <div class="btn-box">
                      <a href="index.php?controle=voiture&action=pageachat&nom=Ferrari%20488%20Spider" class="btn1">
                        Louer
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="./vue/images/spid.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                      Amg GTR Black Series
                    </h1>
                    <p>
                       Des voitures d'exception !
                    <div class="btn-box">
                      <a href="index.php?controle=voiture&action=pageachat&nom=Mercedes%20Amg%20Gtr%20Black%20Series" class="btn1">
                        Louer
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="./vue/images/mercedes.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container-fluid ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <h1>
                    Fiat 500  
                    </h1>
                    <p>
                      Connectez vous dès maintenant pour louer vos voitures.
                    <div class="btn-box">
                      <a href="index.php?controle=voiture&action=pageachat&nom=Fiat%20500" class="btn1">
                        Louer
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="./vue/images/fiat500.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <ol class="carousel-indicators">
          <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
          <li data-target="#customCarousel1" data-slide-to="1"></li>
          <li data-target="#customCarousel1" data-slide-to="2"></li>
        </ol>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  <!-- shop section -->

  <section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Voiture disponible
        </h2>
      </div>
      <div class="row">
          
      <?php
                if ($Contact != false) {
                    foreach ($Contact as $c){
                        echo('<div class="col-md-6 ">');
                        echo('<div class="box">');
                        echo('<a href="index.php?controle=voiture&action=pageachat&nom=' . $c['type'] . '">');
                        echo('<div class="img-box">');
                        echo('<img src="vue/images/'. $c['photo'] . '" alt="">');
                        
                       echo("</div>");
                      echo('<div class="detail-box">');
                       echo("<h6>");
                        echo("$c[type]");
                        echo("</h6>");
                        echo("<h6>");
                        echo("Price:");
                        echo("<span>");
                        echo("$c[Tarif]");
                       echo("</span>");
                        echo("</h6>");
                        echo("</div>") ;                 
                        echo("</a>"); 
                        echo("</div>") ;
                        echo("</div>") ;
                    }
                }
                else echo ('pas de voiture dispo');
            ?>
    
 
  </section>

  <!-- end shop section -->

  <!-- about section -->

  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6 col-lg-5 ">
          <div class="img-box">
            <img src="vue/images/logo.png" alt="">
          </div>
        </div>
        <div class="col-md-6 col-lg-7">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                A propos de nous
              </h2>
            </div>
            <p>
              Nous sommes une entreprise, nouvellement créée, de location de voiture. Vous pouvez retrouver de nombreux modèles sur notre site, des voitures neuves (ou non selon votre envie), des voitures vintage, de sport, de luxe. Cet entreprise ainsi que ce site web ont été crée pour un projet.
            </p>
            <a href="">
              Read More
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  <!-- feature section -->

  <section class="feature_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          Le confort à vos pieds
        </h2>
        <p>
         Venez louer des voitures qui sont accessible pour tous !
        </p>
      </div>
      <div class="row">
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="vue/images/vecto.png" alt="">
            </div>
            <div class="detail-box">
              <h5>
                Basique mais chic !
              </h5>
              <p>
                Retour aux sources, au confort, quoi de mieux pour se détendre ?
              </p>
      
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="vue/images/race.png" alt="">
            </div>
            <div class="detail-box">
               <h5>
                Un peu de sport ?
              </h5>
              <p>
                Retrouvez les meilleurs voitures de sport sur notre site.
              </p>
             
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="vue/images/old.png" alt="">
            </div>
            <div class="detail-box">
               <h5>
                Et le vintage dans tout ça ?
              </h5>
              <p>
                Vous voulez passer quelques heures avec la voiture de vos rêves ? Venez la louer ici !
              </p>
            
           
  
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-3">
          <div class="box">
            <div class="img-box">
              <img src="vue/images/mercedes2.png" alt="">
            </div>
            <div class="detail-box">
                <h5>
                Le luxe, le luxe, et encore le luxe....
              </h5>
              <p>
                Que serait une journée sans luxe ? Nous ne le serons jamais grâce à nos nombreuses voitures luxueuse.
              </p>
            
            </div>
          </div>
        </div>
      </div>
  
    </div>
  </section>

  <!-- end feature section -->

  <!-- contact section -->

  <section class="contact_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="form_container">
            <div class="heading_container">
              <h2>
                Contactez Nous
              </h2>
            </div>
            <form action="">
              <div>
                <input type="text" placeholder="Nom" />
              </div>
               <div>
                <input type="text" placeholder="Prénom" />
              </div>
              <div>
                <input type="email" placeholder="Email" />
              </div>
              <div>
                <input type="text" placeholder="Numéro de téléphone" />
              </div>
              <div>
                <input type="text" class="message-box" placeholder="Message" />
              </div>
              <div class="d-flex ">
                <button>
                  Envoyer
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-6">
          <div class="img-box">
            <img src="vue/images/vintage.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

 

  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-3 footer-col">
          <div class="footer_detail">
            <h4>
              A propos du site
            </h4>
            <p>
             Site conçu pour un projet de programmation web. Les auteurs de ce site sont: Elodie Guldas, Aurélien Dasse et Sofiane Elfartass.
            </p>
            <div class="footer_social">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      

       
      <div class="footer-info">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="https://html.design/">Free Html Templates</a>
        </p>
      </div>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="Vue/js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>
  <!-- bootstrap js -->
  <script src="Vue/js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <!-- custom js -->
  <script src="Vue/js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->
  
</body>

</html>