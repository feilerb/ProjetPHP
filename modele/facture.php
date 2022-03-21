<?php

function nouveaufacture($ide,$idv,$tarif,$dated,$datef) {
    require ("./modele/connectBD.php");

    $sql = 'INSERT INTO `facture` (idv, ide, DateD,DateF, valeur) VALUES (:idv,:ide,:dated,:datef,:valeur)';
try{
    $commande = $pdo->prepare($sql);

    $commande->bindParam(":ide", $ide);
    $commande->bindParam(":idv", $idv);
    $commande->bindParam(":dated", $dated);
    $commande->bindParam(":datef",$datef);
    ini_set("display_errors", 1);
date_default_timezone_set('Europe/Paris');

$debutD= new DateTime($dated); 
   $finD = new DateTime($datef);
   $difference= $debutD->diff($finD);
   $valeur= $difference->days * $tarif;
   $commande->bindParam(":valeur",$valeur);
    

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