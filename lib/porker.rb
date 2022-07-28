RANK = %w[A 2 3 4 5 6 7 8 9 10 J Q K].freeze
SUIT = %w[♠️ ♥ ♣️ ♦︎].freeze

def generated_card
  RANK.sample + SUIT.sample
end

def same_rank?(card1, card2)
  card1[0] == card2[0]
end

def same_suit?(card1, card2)
  card1[1] == card2[1]
end

def same_card?(card1, card2)
  card1 == card2
end

alias :pair? :same_rank?

alias :flush? :same_suit?

def straight?(card1, card2)
  index = RANK.index(card1[0])
  next_index = (index + 1) % 13
  prev_index = index - 1
  card2[0] == RANK[next_index] || card2[0] == RANK[prev_index]
end

def straight_flush?(card1, card2)
  straight?(card1, card2) && flush?(card1, card2)
end
