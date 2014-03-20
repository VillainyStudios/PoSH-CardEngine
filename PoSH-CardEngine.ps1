# Card Engine
# Early version
 
# Suits or card types (TCGs/CCGs: "Land", "Creature", etc.)
$spades = "2♠","3♠","4♠","5♠","6♠","7♠","8♠","9♠","10♠","J♠","Q♠","K♠","A♠"
$diamonds = "2♦","3♦","4♦","5♦","6♦","7♦","8♦","9♦","10♦","J♦","Q♦","K♦","A♦"
$hearts = "2♥","3♥","4♥","5♥","6♥","7♥","8♥","9♥","10♥","J♥","Q♥","K♥","A♥"
$clubs = "2♣","3♣","4♣","5♣","6♣","7♣","8♣","9♣","10♣","J♣","Q♣","K♣","A♣"
 
# Define what makes up the deck and its length
$deck = $spades + $diamonds + $hearts + $clubs
$pool = ($deck.length)
$hand = 

# Basic loop to cycle through and remove all cards in $deck
function draw {
    param ($climb)
    
    for ($i=1; $i -le $climb; $i++){
        $card = ""
        $hand = 
        
        $card = ($deck | get-random)
        $global:hand = $hand |? {$_ + $card}
        $global:deck = $global:deck |? {$_ -ne $card}
        #$card
        $global:hand
    }
}
draw 2
 
# Basic loop to cycle through and remove all cards in $deck
#foreach ($card in $deck){
    #$card = ""
    #$hand = ""
 
 
    #$card = ($deck | get-random)
    #$card
    #$deck = $deck |? {$_ -ne $card}
 
#}
