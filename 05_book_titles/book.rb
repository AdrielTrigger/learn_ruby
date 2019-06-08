class Book
# write your code here
    
    def initialize
        @title
    end

    def title
        @title
    end

    def is_article(word)
        counter = 0
        articles = ["the", "a", "an"]
        while (counter < articles.length)
            if (word == articles[counter])
                return true
            else
                counter += 1
            end
        end
        return false
    end

    def is_conj_prep(word)
        counter = 0
        c_p = ["and", "in", "of"]
        while (counter < c_p.length)
            if (word == c_p[counter])
                return true
            else
                counter += 1
            end
        end
        return false
    end

    def title=(title)
        if (title.split(" ").length == 1)
            @title = title.capitalize
        else
            words = title.split(" ")
            capitalized = []
            capitalized.push(words[0].capitalize)
            counter = 1
            while (counter < words.length)
                if (is_article(words[counter]))
                    capitalized.push(words[counter])
                elsif (is_conj_prep(words[counter]))
                    capitalized.push(words[counter])
                else
                    capitalized.push(words[counter].capitalize)
                end
                counter += 1
            end
            @title = capitalized.join(" ")
        end
    end

end