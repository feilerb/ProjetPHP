<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
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
                    <form action="index.php?controle=voiture&action=ajout" method="post">
                        <div class="form-group"><label class="text-secondary">Type de Voiture</label><input class="form-control" name="type" type="text" required="" value="<?php echo $type ?>"></div>
                        <div class="form-group"><label class="text-secondary">Decription</label><input class="form-control" name="Descri" type="text" required="" value="<?php echo $Descri?>"></div>
                        <div class="form-group"><label class="text-secondary">Nom Photo</label><input class="form-control" name="photo" type="text" value="<?php echo $photo?>" required=""></div>
                        <div class="form-group"><label class="text-secondary">Tarif</label><input class="form-control" name="prix" value="<?php echo $prix?>" type="text" required=""></div>
                        <button class="btn btn-info mt-2" type="submit">Ajouter&nbsp;</button>
                    </form>
                    <p class="mt-3 mb-0"></p>
                </div>
            </div>
            <div class="col-lg-6 d-flex align-items-end" id="bg-block" style="background-image: url(&quot;./vue/images/luxe.jpg&quot;);background-size: cover;background-position: center center;">
                <p class="ml-auto small text-dark mb-2"></p>
            </div>
        </div>
    </div>
    <script src="./vue/js/jquery.min.js"></script>
    <script src="./vue/js/bootstrap.min.js"></script>
</body>

</html>