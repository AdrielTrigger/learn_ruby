#write your code here
def translate text
    words = text.split(" ")
    if words.length > 1
        word = 0
        phrase = []
        while word < words.length
            current_word = translate words[word]
            phrase.push current_word
            word += 1
        end
        return phrase.join(" ")
    
    else

        if if_vowel text
            return text + "ay"
        else
            if_cons text
        end

    end
end

    def if_vowel text
        vowels = ["a", "e", "i", "o", "u"]
        v_index = 0

        while v_index < vowels.length
            if text[0] == vowels[v_index]
                return true
            else
                v_index += 1
            end
        end
        return false
    end

    def if_cons text
        start = text[0..2]
        puts start

        if start[0] == "q" and start[1] == "u"
            return text[2..-1] + text[0..1] + "ay"
        elsif start[1] == "q" and start[2] == "u"
            return text[3..-1] + text[0..2] + "ay"
        elsif if_vowel start[1]
            return text[1..-1] + text[0] + "ay"
        elsif if_vowel start[2]
            return text[2..-1] + text[0..1] + "ay"
        else
            return text[3..-1] + text[0..2] + "ay"
        end
end
