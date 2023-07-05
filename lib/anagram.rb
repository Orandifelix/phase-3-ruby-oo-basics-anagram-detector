# Your code goes here!
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select { |w| anagram?(w.downcase) }
  end

  private

  def anagram?(other_word)
    @word.chars.sort == other_word.chars.sort && @word != other_word
  end
end
