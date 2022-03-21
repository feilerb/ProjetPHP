<?php

function etat0 ($id) {
    require ('connectBD.php');
    $sql="UPDATE voiture Set etat=0 WHERE id=:id";

    try {
        $commande = $pdo->prepare($sql);
        $commande->bindParam(':id', $id);
        $bool = $commande->execute();       
    }

    catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die(); // On arrête tout.
    }
}

function etat1 ($id) {
    require ('connectBD.php');
    $sql="UPDATE voiture Set etat=1 WHERE id=:id";

    try {
        $commande = $pdo->prepare($sql);
        $commande->bindParam(':id', $id);
        $bool = $commande->execute();       
    }

    catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die(); // On arrête tout.
    }
}

function etatentreprise ($id, $ide) {
    require ('connectBD.php');
    $sql="UPDATE voiture Set etat=:ide WHERE id=:id";

    try {
        $commande = $pdo->prepare($sql);
        $commande->bindParam(':id', $id);
        $commande->bindParam(':ide', $ide);
        $bool = $commande->execute();       
    }

    catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die(); // On arrête tout.
    }
}

function nouvellevoit($type, $Descri, $photo, $prix){
    require ("./modele/connectBD.php");
    $sql = 'INSERT INTO `voiture` (type, Description, photo,etat, Tarifs) VALUES (:type,:descri,:photo, 0,:prix)';
try{
    $commande = $pdo->prepare($sql);

    $commande->bindParam(":type", $type);
    $commande->bindParam(":descri", $Descri);
    $commande->bindParam(":photo", $photo);
    $commande->bindParam(":prix",$prix);

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