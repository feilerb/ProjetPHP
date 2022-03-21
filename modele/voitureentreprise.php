<?php
function voitureid($ide){
    require ("Modele/connectBD.php") ; 
		$sql="SELECT  idv, DateD, DateF, valeur FROM facture l 
		Where ide=:ide"; // LIMIT ne marche pas en MS SQL SERVER
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':ide', $ide);
			$bool = $commande->execute();
			$C= array();
			if ($bool) {
				while ($c = $commande->fetch()) {
					$C[] = $c; //stockage dans $C des enregistrements sélectionnés
				}	
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
		return $C;
}
?>