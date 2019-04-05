class Anagram
  attr_accessor :new_anagram
  @@list = []

  def initialize(word)
    @new_anagram = word
  end

  def match(word_list)
    word_list.select do |word|
      an_anagram?(word)
    end
  end

  def an_anagram?(word)
    word.chars.sort == @new_anagram.chars.sort  #Takes a word, turns individual
  end                                           #characters into an array, sorts
end                                             #them alphabetically and evaluates.
