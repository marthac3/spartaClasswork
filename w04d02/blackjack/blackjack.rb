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

def deal_blackjack(deck, hand1, hand2)
	hand1.push("Ace Heart")
	hand1.push("Ace Spade")
	deal_card(deck, hand2)
	deal_card(deck, hand2)
end

def get_value(hand)
	value = 0
	hand.each do |card|
		card_val = (card.split(' '))[0]
		if(card_val == "King" || card_val == "Queen" || card_val == "Jack")
			value += 10
		elsif(card_val == "Ace")
			if(value < 11)
				value += 11
			else
				value += 1
			end
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
	if((cards.include?("King") || cards.include?("Queen") || cards.include?("Jack")) && cards.include?("Ace"))
		true
	else
		false
	end
end

def blackjack_alert(hand1, hand2)
	if blackjack(hand1)
		puts hand1
		puts "Blackjack! You win"
	elsif blackjack(hand2)
		puts hand2
		puts "Blackjack! Computer wins"
	end
end

def computer_play(deck, hand)
	loop do
		deal_card(deck, hand)
		if check_bust(hand)
			puts hand
			puts get_value(hand)
			puts "Computer bust! You win!"
		end
	break if((check_bust(hand)) || (get_value(hand) > 17))
	end
end

def play(deck, hand1, hand2)
	loop do
		puts hand1
		puts get_value(hand1)
		puts "Would you like to (h)it or (s)tick?"
		input = gets.chomp
		if(input == "h")
			deal_card(deck, hand1)
			if check_bust(hand1)
				puts hand1
				puts get_value(hand1)
				puts "Bust!"
			end
		elsif(input == "s")
			computer_play(deck, hand2)
			check_win(hand1, hand2)
		else
			puts "Invalid input"
		end
		break if((input == "s") || check_bust(hand1))
	end
end

def run
	deck = build_deck
	player_hand = []
	computer_hand = []
	deal_hands(deck, player_hand, computer_hand)
	#deal_blackjack(deck, player_hand, computer_hand)
	if (blackjack(player_hand) || blackjack(computer_hand))
		blackjack_alert(player_hand, computer_hand)
	else
		play(deck, player_hand, computer_hand)
	end
end

run