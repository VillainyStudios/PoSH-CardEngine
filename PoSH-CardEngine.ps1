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

# Basic function to draw cards
function draw {
    param ($climb)
    
    for ($i=1; $i -le $climb; $i++){
        $card = ""
        $hand = 
        
        $card = ($deck | get-random)
        $global:hand = $hand |? {$_ -eq $card}
        $deck = $deck |? {$_ -ne $card}
        
        $global:hand
        
    }
}

# Example of drawing three cards
draw 3
