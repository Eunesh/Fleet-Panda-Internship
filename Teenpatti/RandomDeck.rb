#Generate 3 random numbers
class Deck
  @@deck = {
    "hearts"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "diamonds"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "spade"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
    "clubs"=> [2,3,4,5,6,7,8,9,10,"jack","Queen","King","ace"],
  }
  def initialize
  end

  def self.create_hand
    # colors = @@deck.keys
    card = @@deck.values
    # colors[rand(colors.size)]
    card[0][rand(13)]
  end
end

 puts Deck.create_hand;

#  puts RandomNumberGenerator();
