////////////////////////////////////
////			         //
//      Copyright © TCG         //
//www.tcgaming.enjin.com       //
////////////////////////////////


policehq animate ["jdoor",1]; policehq say "dooropen";
player groupchat "Closing Door in 5 seconds";
sleep 5;
policehq animate ["jdoor",0]; policehq say "doorclose";
