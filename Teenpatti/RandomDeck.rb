#Generate 3 random numbers
class Deck
  @@deck = {
    "hearts"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "diamonds"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "spade"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "clubs"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
  }

  @@hand= []
  def initialize
  end

  def self.create_hand
    colors = @@deck.keys
    card = @@deck.values
    randColors = colors[rand(colors.size)]
    randCard = card[rand(4)][rand(13)]
    @@hand.push(randColors, randCard);
    return @@hand
  end
end

puts Deck.create_hand;

#  puts RandomNumberGenerator();
