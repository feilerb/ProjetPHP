<?php

function entreprisenomid_bd ($id, &$resultat) {
    require ('connectBD.php');
    $sql="SELECT NomE FROM `client`  WHERE ID=:id";

    try {
        $commande = $pdo->prepare($sql);
        $commande->bindParam(':id', $id);
        $bool = $commande->execute();

        if ($bool)
            $resultat = $commande->fetch(PDO::FETCH_ASSOC); //tableau d'enregistrements

        if (count($resultat)== 0) return false;
        else return true;
    }

    catch (PDOException $e) {
        echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
        die(); // On arrête tout.
    }

    
}

?>