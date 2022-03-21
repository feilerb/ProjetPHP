<?php

function connexion(){
    $nom=  isset($_POST['nom'])?($_POST['nom']):'';
    $mdp=  isset($_POST['mdp'])?($_POST['mdp']):'';
    $msg='';


    if  (count($_POST)==0){
        
         require ("./vue/utilisateur/connexion.tpl") ;
    }
             
    else {
    
            require('./modele/connexion_BD.php');
        if  (! verif_ident($nom,$mdp) ||  !verif_ident_bd ($nom, $mdp, $resultat)) {
            $_SESSION['profil']= array();

            $msg ="erreur de saisie";
            require ("./vue/utilisateur/connexion.tpl") ;
        }
        else {
            $_SESSION['profil']= $resultat[0];
            if($_SESSION['profil']['ID']<1){
                $_SESSION['profil']['role']=0;
            }
            else{
                $_SESSION['profil']['role']=1;
            }


            $url = "index.php";
            header ("Location:" .$url) ;

        }
    }
}

function inscription()
{
    $nom = isset($_POST['NomE']) ? ($_POST['NomE']) : '';
    $email = isset($_POST['email']) ? ($_POST['email']) : '';
    $adresse = isset($_POST['adresse']) ? ($_POST['adresse']) : '';
    $mdp= isset($_POST['mdp']) ? ($_POST['mdp']) : '';
    $msg = '';

    if (count($_POST) == 0) require ("./vue/utilisateur/inscription.tpl");
    else
    {
        require ("./modele/connexion_BD.php");
        if (verif_ident_bd($nom,$mdp, $r))
        {
            $msg = "Utilisateur existant !";
            require ("./vue/utilisateur/inscription.tpl");
        }
      
          if(!nouveauClient($nom, $email, $adresse, $mdp)){

            $msg = "Echec de l'insertion";
            require('./vue/inscription.tpl');

        }

        else
        {
            verif_ident_bd ($nom, $mdp, $resultat);

          $_SESSION['profil']= $resultat[0];
            $_SESSION['profil']['role']=1;
          $url = "index.php";
          header ("Location:" .$url) ;
        }
    }
}

function location(){
    if($_SESSION['profil']['role']==0){
        $ide = isset($_GET['ide']) ? ($_GET['ide']) : '1';
    }
    else{
        $ide = $_SESSION['profil']['ID'];
    }
    require("./modele/voitureentreprise.php");
    require("./modele/voituretypeBD.php");
    $res = voitureid($ide);
    require("./vue/utilisateur/location.tpl");
}

function deconnexion(){
    $_SESSION['profil']=array();
    session_destroy();
    $url="index.php";
    header ("Location:" . $url);
}

function descri(){
    if($_SESSION['profil']['role']!=0){
        $url = "index.php";
        header("Location: $url");
    }
    $id=  isset($_GET['id'])?($_GET['id']):'';
    

}

function verif_ident($nom,$mdp) {
	return true; // TODO
}
?>