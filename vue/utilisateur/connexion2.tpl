<!doctype html>
<html lang="fr">

<head>
  <meta charset="utf-8">
  <title>identification</title>
</head>

<body>

<h3> Formulaire d'authentification </h3>
<form action="ident.php" method="post">

    <input 	name="nom" 	type="text" value= "<?php echo $nom;
											?>"
					>      Nom      <br/>
    <input  name="mdp"  type="text"  value= "<?php echo $mdp;
											?>"
					>  Mot de passe   <br/>

	<input type= "submit"  value="Se connecter"> <button type="submit" formaction="inscription.php">S'inscrire</button>

</form>

	<div> <?php echo $msg; ?> </div>

    
</body></html>