def build_deck
	deck = []
	for num in (2..10)
		deck.push ("#{num} Heart")
		deck.push ("#{num} Diamond")
		deck.push ("#{num} Spade")
		deck.push ("#{num} Club")
	end

	pictures = ["Ace", "King", "Queen", "Jack"]
	pictures.each do |picture|
		deck.push ("#{picture} Heart")
		deck.push ("#{picture} Diamond")
		deck.push ("#{picture} Spade")
		deck.push ("#{picture} Club")
	end
	deck.shuffle!
end

def deal_card(deck, hand)
	hand.push(deck.pop)
end

def deal_hands(deck, hand1, hand2)
	2.times do
		deal_card(deck, hand1)
		deal_card(deck, hand2)
	end
end

def get_value(hand)
	value = 0
	hand.each do |card|
		card_val = (card.split(' '))[0]
		if(card_val == "King" || card_val == "Queen" || card_val == "Jack")
			value += 10
		elsif(card_val == "Ace")
			value += 11
		else
			value += card_val.to_i
		end
	end
	value
end

def check_win(hand1, hand2)
	puts "Player's hand: #{hand1}, Computer's hand: #{hand2}"
	if get_value(hand1) > get_value(hand2)
		puts "Player wins"
	else
		puts "Computer wins"
	end
end

def check_bust(hand)
	if get_value(hand) > 21
		true
	else
		false
	end
end

def blackjack(hand)
	cards = []
	hand.each do |card|
		card_val = (card.split(' '))[0]
		cards.push(card_val)
	end
	if(cards.include?("King" || "Queen" || "Jack") && cards.include?("Ace"))
		true
	else
		false
	end
end

def blackhack_alert(hand1, hand2)

end

def run
	input = " "
	deck = build_deck
	player_hand = []
	computer_hand = []
	deal_hands(deck, player_hand, computer_hand)
	if blackjack(player_hand)
			puts player_hand
			puts "Blackjack! You win"
		elsif blackjack(computer_hand)
			puts computer_hand
			puts "Blackjack! Computer wins"
		end
	while (input != "s" && check_bust(player_hand) == false && blackjack(player_hand) == false && blackjack(computer_hand) == false)
		puts player_hand
		puts get_value(player_hand)
		puts "Would you like to (h)it or (s)tick?"
		input = gets.chomp
		if(input == "h")
			deal_card(deck, player_hand)
			if check_bust(player_hand)
				puts player_hand
				puts get_value(player_hand)
				puts "Bust!"
			end
		elsif(input == "s")
			check_win(player_hand, computer_hand)
		else
			puts "Invalid input"
		end
	end
end

run