class PigLatinizer
  attr_accessor :text, :result
  attr_reader :sentence, :word
  VOWELS = ["a", "e", "i", "o", "u"]
  
  def initialize(text)
    @text = text
    @result = platinizer
  end
  
  private
  
  def platinizer
    @sentence = @text.split(" ")
    @sentence.map do |word|
      if word.downcase.start_with?("a","e","i","o","u")
        word + "way"
      else
        @word = word.split("")
        while VOWELS.include?(@word[0].downcase)
          @word << @word.shift
        end
        @word.join("") + "ay"
      end
    end.join(" ")
  end
  
end