#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat string, number = 2
    repeat_string = string
    counter = 0
    while counter < number - 1
        repeat_string += " #{string}"
        counter += 1
    end
    repeat_string 
end

def start_of_word string, number
    letters = string.split("")
    some_letters = []
    counter = 0
    
    number.times do
        some_letters.push letters[counter]
        counter += 1
    end

    some_letters = some_letters.join("")
    return some_letters
end

def first_word phrase
    words = phrase.split(" ")
    first = words[0]
    return first
end

def titleize string
    words = string.split(" ")
    counter = 0
    words.length.times do
        words[counter] = words[counter].capitalize
        counter += 1
    end
    counter = 1
    words.length.times do
        if words[counter] == "And" or words[counter] == "The" or words[counter] == "Over"
            words[counter] = words[counter].downcase
        end
        counter += 1
    end
    words = words.join(" ")
    return words
end