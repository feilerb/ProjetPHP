<?php
    function affichage (){
        require ("./modele/voituredispoBD.php");
		$Contact = contacts();
 		require("./vue/layout/layout.tpl");
    }

	function pageachat (){		
		$nom=  isset($_GET['nom'])?($_GET['nom']):'';
		$role=isset($_SESSION['profil']['role'])?($_SESSION['profil']['role']):1;
		require ("./modele/voituretypeBD.php");
		if ($role==0){
			$Contact = contacts0($nom);			
			require("./modele/entrepriseID.php");
		}
		else{
			$Contact = contacts1($nom);
		}
 		require("./vue/layout/layout.tpl");
	}

	function ajout(){
		if($_SESSION['profil']['role']!=0){
			$url = "index.php";
			header("Location: $url");
		}
		$msg = '';
		$type=  isset($_POST['type'])?($_POST['type']):'';
		$Descri=  isset($_POST['Descri'])?($_POST['Descri']):'';
		$photo=  isset($_POST['photo'])?($_POST['photo']):'';
		$prix=  isset($_POST['prix'])?($_POST['prix']):'';

		if (count($_POST) == 0) require ("./vue/voiture/ajout.tpl");
    else
    {
		require("./modele/altervoiture.php");
          if(!nouvellevoit($type, $Descri, $photo, $prix)){

            $msg = "Echec de l'insertion";
            require('./vue/inscription.tpl');

        }
		else{
			$url = "index.php";
			header("Location: $url");
		}
    }
	}

	function louer (){
		$msg=  isset($_GET['msg'])?($_GET['msg']):'';
		$dateD=  isset($_GET['dateD'])?($_GET['dateD']):'';
		$dateF=  isset($_GET['dateF'])?($_GET['dateF']):'';
		if (!isset($_SESSION['profil']['role'])){
			$url = "index.php?controle=utilisateur&action=connexion";
			header("Location: $url");
		}
		$IDclie = isset($_SESSION['profil']['ID'])?($_SESSION['profil']['ID']):'';
		$IDvoiture = isset($_GET['id'])?($_GET['id']):'';
		require("./modele/voituretypeBD.php");
		$voiture = image($IDvoiture);


		require("./vue/layout/layout.tpl");
	}

	function etat(){
		if($_SESSION['profil']['role']!=0){
			$url = "index.php";
			header("Location: $url");
		}
		$id=  isset($_GET['id'])?($_GET['id']):'';
		require("./modele/voituretypeBD.php");
		require("./modele/altervoiture.php");
		$etat=etatid($id);
		if ($etat[0]==1){
			etat0($id);
		}
		else{
			etat1($id);
		}
		$url = "index.php";
		header("Location: $url");
	}
?>