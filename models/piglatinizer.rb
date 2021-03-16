class PigLatinizer

    attr_accessor :text

    def initialize(text)
        @text = text
    end

    def latinizer
        word_arr = @text.split(" ")
        word_arr.each do |word|
            if word[0] == "a" || "e" || "i" || "o" || "u"
                word += "way"
            else
                word.each_with_index do |letter, index|
                    if letter == "a" || "e" || "i" || "o" || "u"
                        word = word.slice(index, word.legnth) + word.slice(0, index) + "ay"
                    end
                end
            end
        end
    end
end