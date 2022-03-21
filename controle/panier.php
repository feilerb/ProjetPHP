<?php


function panier(){   
   nouveauPanier();
   $panier=$_SESSION['panier'];
   $total=montantTotal();
   require("./modele/voituretypeBD.php");
   require("./vue/panier/panier.tpl");
}




function montantTotal(){
   $total=0;
   error_reporting(E_ALL);
ini_set("display_errors", 1);
date_default_timezone_set('Europe/Paris');
   for($t = 0; $t < count($_SESSION['panier']['idv']); $t++)
   {
      $debutD= new DateTime($_SESSION['panier']['dateD'][$t]); 
   $finD = new DateTime($_SESSION['panier']['dateF'][$t]);
   $difference= $debutD->diff($finD);
      $total += $difference->days * $_SESSION['panier']['valeur'][$t];
   }
   return $total;
}

function nouveauPanier(){
   if (!isset($_SESSION['panier'])){
      $_SESSION['panier']=array();
      $_SESSION['panier']['idv'] = array();
      $_SESSION['panier']['valeur']=array();
      $_SESSION['panier']['dateD'] = array();
      $_SESSION['panier']['dateF'] = array();
   }
   return true;
}
function addVoiture(){
   $idv = isset($_GET['idv']) ? ($_GET['idv']) : '';
   $valeur = isset($_GET['valeur']) ? ($_GET['valeur']) : '';
   $dateD = isset($_POST['dateD']) ? ($_POST['dateD']) : '';
   $dateF = isset($_POST['dateF']) ? ($_POST['dateF']) : '';

   //on regarde si le panier existe
   if (nouveauPanier())
   {
      //On regarde si le produit existe déjà, si oui on ajoute seulement +1 à la quantité si non on crée un nouveau produit dans le panier

      $produitExistant = array_search($idv,  $_SESSION['panier']['idv']);
      var_dump($produitExistant);

      if ($produitExistant===false){
         echo('a');
         array_push( $_SESSION['panier']['idv'],$idv);
         array_push( $_SESSION['panier']['dateD'],$dateD);
         array_push( $_SESSION['panier']['valeur'],$valeur);
         array_push( $_SESSION['panier']['dateF'],$dateF);
         $url = "index.php";
         
      }
      else{
         $url = "index.php?controle=voiture&action=louer&msg=voiture deja dans le panier&id=" . $idv;
      }
      
      header("Location: $url");
      
   }
  
}

function achat(){
   require("./modele/altervoiture.php");
   require("./modele/facture.php");
   for($i = 0; $i < count($_SESSION['panier']['idv']); $i++){
      etatentreprise ($_SESSION['panier']['idv'][$i], $_SESSION['profil']['ID']);
      nouveaufacture($_SESSION['profil']['ID'],$_SESSION['panier']['idv'][$i],$_SESSION['panier']['valeur'][$i],$_SESSION['panier']['dateD'][$i],$_SESSION['panier']['dateF'][$i]);
      
   }
   $url = "index.php";
   unset($_SESSION['panier']);
   header("Location: $url");
}

function suppVoiture(){
   $idv = isset($_GET['idv']) ? ($_GET['idv']) : '';
   if (nouveauPanier())
   {
      // panier temporaire
      $tmp=array();
      $tmp['idv'] = array();
      $tmp['dateD'] = array();
      $tmp['dateF'] = array();

      for($i = 0; $i < count($_SESSION['panier']['idv']); $i++)
      {
         if ($_SESSION['panier']['idv'][$i] !== $idv)
         {
            array_push( $tmp['idv'],$_SESSION['panier']['idv'][$i]);
            array_push( $tmp['valeur'],$_SESSION['panier']['valeur'][$i]);
            array_push( $tmp['dateD'],$_SESSION['panier']['dateD'][$i]);
            array_push( $tmp['dateF'],$_SESSION['panier']['dateF'][$i]);
         }

      }
      $url = "index.php?controle=panier&action=panier";
      header("Location: $url");
      //On échange le panier en session avec le panier temporaire pa
      $_SESSION['panier'] =  $tmp;
      //delete tmp
      unset($tmp);
   }
  
}


?>