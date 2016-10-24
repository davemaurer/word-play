class Scrabble
  def score(word)
    if word == "" || word == nil
      return 0
    end
    letters = word.upcase.chars # take word and make it all capitals and chop it up.
    mapped = letters.map do |letter|
      point_values[letter] # give me the value of each letter in the point values
      # hash as it iterates through and hits each letter
    end
    mapped.reduce do |sum, num|
      sum + num
    end
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
