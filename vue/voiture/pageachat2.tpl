<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>TP contacts - mvc - liste des informations sur les contacts de l'utilisateur connecté.</title>
		<link rel="stylesheet" href="./vue/styleCSS/style.css"/>
		<link rel="stylesheet" href="./vue/styleCSS/contact.css"/>
		<!-- <script src="script.js"></script> -->
	</head>
	<body>
		<div id="main">
			<?php
				if ($Contact != false) {
					echo ('<img src="./vue/images/' . $Contact[0]['photo'] .'" alt="' . $nom . '">');
					echo ('<table>');
					echo ('<tr><th> Disponibilité </th> <th> Description </th> <th> Tarif </th></tr>'); 	
					foreach ($Contact as $c) {
                        
						echo ("<tr>");
                        if($c['etat']==0){
                            echo("<td>");
							if($_SESSION['profil']['role']==1)
                            	echo('<a href="index.php?controle=voiture&action=louer&id='.$c['ID']. '"> Disponible');
							else{
								echo('<p>Disponible </p><a href="index.php?controle=voiture&action=etat&id='.$c['ID']. '"> changer d etat');
							}
							
                            echo('</a>');
                            echo("</td>");
                        }
                        else if ($c['etat']==1){
                            echo('<a href="index.php?controle=voiture&action=location&id='.$c['ID']. '">');
                            echo ("<td>" . 'En revision' . "</td>");
                            echo('</a>');
                        }
                        else{
                            if(entreprisenomid_bd ($c['etat'], $resultat)){
                                echo ("<td>" . $resultat['NomE'] . "</td>");
                            }
                        }
						echo ("<td>" . $c['Description'] . "</td>"); 
						echo ("<td>" . $c['Tarifs'] . "</td>"); 
						echo ("</tr>\n");
                        
					}
					echo ('</table>');
				}
				else echo ('pas de voiture disponible');
			?>
		</div>
	</body>
</html>