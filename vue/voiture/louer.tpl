<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Louer</title>
    <link rel="stylesheet" href="./vue/css/bootstrap.min.css">
    <link rel="stylesheet" href="./vue/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="./vue/css/-Login-form-Page-BS4-.css">
    <link rel="stylesheet" href="./vue/css/styles.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row mh-100vh">
            <div class="col-10 col-sm-8 col-md-6 col-lg-6 offset-1 offset-sm-2 offset-md-3 offset-lg-0 align-self-center d-lg-flex align-items-lg-center align-self-lg-stretch bg-white p-5 rounded rounded-lg-0 my-5 my-lg-0" id="login-block">
                <div class="m-auto w-lg-75 w-xl-50">
                    <h2 class="text-info font-weight-light mb-5"><i class="fa fa-id-card"></i>&nbsp;Roue Libre</h2>
                    <?php
                    echo('<form action="index.php?controle=panier&action=addVoiture&idv='. $IDvoiture . '&valeur='. $voiture['Tarifs'] . '" method="post" >' );
                    ?>
                    
                        <div class="form-group"><label class="text-secondary">Date Debut</label><input class="form-control" type="date" required="" name="dateD" value="<?php echo $dateD;?>"></div>
                        <div class="form-group"><label class="text-secondary">Date Fin</label><input class="form-control" type="date" required="" name="dateF" value="<?php echo $dateF;?>"></div>
                        <?php

                            echo('<div class="form-group"><p class="text-secondary">Tarif: '. $voiture['Tarifs'] . '</p></div>');
                            echo('<div class="form-group"><p class="text-secondary">'. $msg . '</p></div>');
                        ?>
                        <button class="btn btn-info mt-2" type="submit">Louer&nbsp;</button>
                    </form>                    
                    <p class="mt-3 mb-0"></p>
                </div>
            </div>
            <?php
            echo('<div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background-image: url(&quot;./vue/images/' . $voiture['photo'] . '&quot;);background-size: cover;background-position: center center;">');
                echo('<p class="ml-auto small text-dark mb-2"></p>');
            echo('</div>');
            ?>
        </div>
    </div>
    <script src="./vue/js/jquery.min.js"></script>
    <script src="./vue/js/bootstrap.min.js"></script>
</body>

</html>