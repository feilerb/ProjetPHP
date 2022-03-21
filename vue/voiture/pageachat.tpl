<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="./vue/css/bootstrap.min.css">
    <link rel="stylesheet" href="./vue/fonts/font-awesome.min.css">
      
</head>

<body><div class="shopping-cart">
<div class="px-4 px-lg-0">

  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Voiture</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Prix</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Description</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                  <?php
                  foreach ($Contact as $c) {
                      echo('<tr>');
                      echo('<th scope="row" class="border-0">');
                      echo('<div class="p-2">');
                      echo('<img src="./vue/images/' . $c['photo'] . '" alt="" width="70" class="img-fluid rounded shadow-sm">');
                      echo('<div class="ml-3 d-inline-block align-middle">');
                      if($c['etat']==0){
                        if($role==1)
                            echo('<h5 class="mb-0"> <a href="index.php?controle=voiture&action=louer&id='.$c['ID']. '" class="text-dark d-inline-block align-middle">Disponible</a></h5><span class="text-muted font-weight-normal font-italic d-block">' . $nom . '</span>');
                        else{
                            echo('<h5 class="mb-0"> <a href="index.php?controle=voiture&action=etat&id='.$c['ID']. '" class="text-dark d-inline-block align-middle">Disponible</a></h5><span class="text-muted font-weight-normal font-italic d-block">' . $nom . '</span>');
                        }
                    }
                    else if ($c['etat']==1){
                        echo('<h5 class="mb-0"> <a href="index.php?controle=voiture&action=etat&id='.$c['ID']. '" class="text-dark d-inline-block align-middle">En revision</a></h5><span class="text-muted font-weight-normal font-italic d-block">' . $nom . '</span>');
                    }
                    else{
                        if(entreprisenomid_bd ($c['etat'], $resultat)){
                            echo('<h5 class="mb-0"> <a href="index.php?controle=utilisateur&action=location&ide='.$c['etat']. '" class="text-dark d-inline-block align-middle">' . $resultat['NomE'] . '</a></h5><span class="text-muted font-weight-normal font-italic d-block">' . $nom . '</span>');
                        }
                    }
                      echo('</div>');
                      echo('</div>');
                      echo('</th>');
                      echo('<td class="border-0 align-middle"><strong>' . $c['Tarifs'] . '€/jour</strong></td>');
                      echo('<td class="border-0 align-middle"><strong>' . $c['Description'] . '</strong></td>');
                      echo('</tr>');
                      
                  }
                  ?>
                
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>

      

    </div>
  </div>
</div>
</div>
    <script src="./vue/js/jquery.min.js"></script>
    <script src="./vue//bootstrap/js/bootstrap.min.js"></script>
</body>

</html>