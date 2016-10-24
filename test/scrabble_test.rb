gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

describe Scrabble do
  it 'can score a single letter' do
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  it 'can score a word' do
    assert_equal 7, Scrabble.new.score("string")
    assert_equal 6, Scrabble.new.score("yes")
  end

  it 'returns 0 if given an empty string' do
    assert_equal 0, Scrabble.new.score("")
  end

  it 'returns 0 if given nil' do
    assert_equal 0, Scrabble.new.score(nil)
  end

end
