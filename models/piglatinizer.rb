class PigLatinizer
  attr_accessor :text, :result
  attr_reader :sentence, :word
  
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
        binding.pry
        @word = word.split("")
        until %w(a e i o u).include?(@word[0].downcase)
          @word << @word.shift
        end
        @word.join("") + "ay"
      end
    end.join(" ")
  end
  
end