require 'minitest/autorun'
require_relative '../lib/porker.rb'

class SampleTest < Minitest::Test
  def test_sample
    # assert_equal 'RUBY', 'ruby'.upcase
    # p card1 = '2♥'
    # p card2 = '2♦︎'
    assert same_rank?('2♥', '2♦︎') #=> true

    # p card1 = '2♥'
    # p card2 = '3♥'
    # p same_rank?(card1, card2) #=> false

    # p card1 = '2♥'
    # p card2 = '2♦︎'
    # p same_suit?(card1, card2) #=> false

    # p card1 = '2♥'
    # p card2 = '3♥'
    # p same_suit?(card1, card2) #=> true

    # p card1 = '2♥'
    # p card2 = '2♦︎'
    # p same_card?(card1, card2) #=> false

    # p card1 = '3♥'
    # p card2 = '3♥'
    # p same_card?(card1, card2) #=> true

    # alias :pair? :same_rank?

    # p card1 = '2♥'
    # p card2 = '2♦︎'
    # p pair?(card1, card2) #=> true

    # p card1 = '2♥'
    # p card2 = '3♥'
    # p pair?(card1, card2) #=> false

    # alias :flush? :same_suit?

    # p card1 = '2♥'
    # p card2 = '2♦︎'
    # p flush?(card1, card2) #=> false

    # p card1 = '2♥'
    # p card2 = '3♥'
    # p flush?(card1, card2) #=> true

    # def straight?(card1, card2)
    #   index = RANK.index(card1[0])
    #   next_index = index + 1 == 13 ? 0 : index + 1
    #   prev_index = index - 1
    #   card2[0] == RANK[next_index] || card2[0] == RANK[prev_index]
    # end

    # p card1 = '2♥'
    # p card2 = '3♦︎'
    # p straight?(card1, card2)

    # p card1 = '2♥'
    # p card2 = 'A♦︎'
    # p straight?(card1, card2)

    # p card1 = 'A♥'
    # p card2 = '2♦︎'
    # p straight?(card1, card2)

    # p card1 = 'A♥'
    # p card2 = 'K♦︎'
    # p straight?(card1, card2)

    # p card1 = 'K♥'
    # p card2 = 'A♦︎'
    # p straight?(card1, card2)

    # p card1 = 'K♥'
    # p card2 = 'Q♦︎'
    # p straight?(card1, card2)
  end
end
