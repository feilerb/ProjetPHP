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
                    <div class="py-2 text-uppercase">Dates</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                <?php
                foreach($res as $i){
                    $C=image(intval($i['idv']));
                  echo ('<tr>');
              
                  echo('<th scope="row" class="border-0">');

                    echo('<div class="p-2">');

                     echo('<img src="./vue/images/' . $C['photo'] . '" alt="" width="70" class="img-fluid rounded shadow-sm">');
                     echo('<div class="ml-3 d-inline-block align-middle">');
                       echo(' <h5 class="mb-0" class="text-dark d-inline-block align-middle">'.$C['type'] .'</a></h5>');
                    echo('</div>');
                    echo('</div>');
                 echo('</th>');
                 echo('<td class="border-0 align-middle"><strong>' . $i['valeur'] . '</strong></td>');
                 echo('<td class="border-0 align-middle"><strong>' . $i['DateD'] . ' - '. $i['DateF'] . ' </strong></td>');
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
    <script src="./vue/js/jquery.min.js"></script>
    <script src="./vue//bootstrap/js/bootstrap.min.js"></script>
</body>

</html>