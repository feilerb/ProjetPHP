<?php 
	/*Fonctions-modèle réalisant les requètes de gestion des contacts en base de données*/
	
	// liste_contact_bd : retourne la liste des informations pour chaque contact de l'utilisateur $id
	
	function contacts0($nom) {
		require ("Modele/connectBD.php") ;
		 
		$sql="SELECT  Description, etat, photo, Tarifs, ID FROM voiture v 
		Where type=:nom"; // LIMIT ne marche pas en MS SQL SERVER
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':nom', $nom);
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

	function contacts1($nom) {
		require ("Modele/connectBD.php") ; 
		$sql="SELECT  Description, etat, photo, Tarifs, ID, type FROM voiture v 
		Where type=:nom And etat=0" ; 
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':nom', $nom);
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

	function image($ID) {
		require ("Modele/connectBD.php") ; 
		$sql="SELECT  photo , Tarifs, type FROM voiture v 
		Where ID=:id" ; 
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':id', $ID);
			$bool = $commande->execute();
			
			if ($bool) {
				$C = $commande->fetch();				
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
		return $C;
	}

	function etatid($ID) {
		require ("./modele/connectBD.php") ; 
		$sql="SELECT  etat FROM voiture v 
		Where ID=:id" ; 
		try {
			$commande = $pdo->prepare($sql);
            $commande->bindParam(':id', $ID);
			$bool = $commande->execute();
			
			if ($bool) {
				$C = $commande->fetch();				
			}
		}
		catch (PDOException $e) {
			echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
			die(); // On arrête tout.
		}
		return $C;
	}
?>