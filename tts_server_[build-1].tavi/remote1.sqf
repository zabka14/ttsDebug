////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com  Traduit par Previus     //
////////////////////////////////


policehq animate ["jdoor",1]; policehq say "dooropen";
player groupchat "Fermeture de la porte dans 5 secondes";
sleep 5;
policehq animate ["jdoor",0]; policehq say "doorclose";
