require 'minitest/autorun'
require_relative '../lib/porker.rb'
require 'byebug'

class PorkerTest < Minitest::Test
  def test_same_rank?
    assert same_rank?('2♥', '2♦︎') #=> true
    refute same_rank?('2♥', '3♥') #=> false
  end
  
  def test_same_suit?
    assert same_suit?('2♥', '3♥') #=> true
    refute same_suit?('2♥', '2♦︎') #=> false
  end
  
  def test_same_card?
    assert same_card?('3♥', '3♥') #=> true
    refute same_card?('2♥', '2♦︎') #=> false
  end

  def test_pair?
    assert pair?('2♥', '2♦︎') #=> true
    refute pair?('2♥', '3♥') #=> false
  end

  def test_flush?
    assert flush?('2♥', '3♥') #=> true
    refute flush?('2♥', '2♦︎') #=> false
  end

  def test_straight?
    assert straight?('2♥', '3♦︎')
    assert straight?('2♥', 'A♦︎')
    assert straight?('A♥', '2♦︎')
    assert straight?('A♥', 'K♦︎')
    assert straight?('K♥', 'A♦︎')
    assert straight?('K♥', 'Q♦︎')

    refute straight?('2♥', '2♥')
    refute straight?('2♥', '5♥')
  end

  def test_straight_flush?
    assert straight_flush?('2♥', '3♥')
    refute straight_flush?('2♥', '3♦︎')
    refute straight_flush?('A♥', '3♥')
    refute straight_flush?('A♥', '5♦︎')
  end
end
