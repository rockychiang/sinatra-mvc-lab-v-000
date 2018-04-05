class PigLatinizer
  attr_reader :sentence, :word
  
  def piglatinize(text)
    @sentence = text.split(" ")
    @sentence.map do |word|
      if word.downcase.start_with?("a","e","i","o","u")
        word + "way"
      else
        @word = word.split("")
        until %w(a e i o u).include?(@word[0].downcase)
          @word << @word.shift
        end
        @word.join("") + "ay"
      end
    end.join(" ")
  end
  
end