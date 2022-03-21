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
                    <form action="index.php?controle=utilisateur&action=inscription" method="post">
                        <div class="form-group"><label class="text-secondary">Nom Entreprise</label><input class="form-control" name="NomE" type="text" required=""></div>
                        <div class="form-group"><label class="text-secondary">Email</label><input class="form-control" name="email" type="text" required=""></div>
                        <div class="form-group"><label class="text-secondary">Adresse</label><input class="form-control" name="adresse" type="text" required=""></div>
                        <div class="form-group"><label class="text-secondary">Mot de passe</label><input class="form-control" name="mdp" type="password" required=""></div>
                        <button class="btn btn-info mt-2" type="submit">Se connecter&nbsp;</button>
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