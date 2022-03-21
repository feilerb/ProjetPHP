<?php

function verif_ident_bd ($nom, $mdp, &$resultat) {
    require ('connectBD.php');
    $sql="SELECT * FROM `client`  WHERE nomE=:nomE AND mdp=:mdp";

    try {
        $commande = $pdo->prepare($sql);
        $commande->bindParam(':nomE', $nom);
        $commande->bindParam(':mdp', $mdp);
        $bool = $commande->execute();

        if ($bool)
            $resultat = $commande->fetchAll(PDO::FETCH_ASSOC); //tableau d'enregistrements

        if (count($resultat)== 0) return false;
        else return true;
    }

    catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die(); // On arrête tout.
    }

    if (count($resultat)== 0) 
        return false;
        else
         return true;
}

function create_new($nom,$num,$prenom,$email,&$profil) {
    require ("modele/connectBD.php");

    $sql = "INSERT INTO `utilisateur` (nom, prenom, num, email) VALUES (:nom ,:prenom,:num,:email)";

    $commande = $pdo->prepare($sql);
    $commande->execute([
        ':nom' => $nom,
        ':prenom' => $prenom,
        ':num' => $num,
        ':email' => $email
    ]);
    return true;
}

function nouveauClient($NomE,$email,$adresse,$mdp) {
    require ("./modele/connectBD.php");

    $sql = 'INSERT INTO `client` (NomE, email, adresse,mdp) VALUES (:NomE,:email,:adresse,:mdp)';
try{
    $commande = $pdo->prepare($sql);

    $commande->bindParam(":NomE", $NomE);
    $commande->bindParam(":email", $email);
    $commande->bindParam(":adresse", $adresse);
    $commande->bindParam(":mdp",$mdp);

     if($commande->execute()){

      return true;

    }

    return false;


  }
  catch (PDOException $e){

    echo utf8_encode("Echec : " . $e->getMessage() . "\n");
    die();

  }

}

?>