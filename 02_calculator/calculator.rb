#write your code here
def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum array
    result = 0
    counter = 0
    while counter < array.length
        result += array[counter]
        counter += 1
    end
    result
end

def multiply a, b
    a * b
end

def power (a, b)
    a ** b
end

def factorial a
    result = a
    factoring = a
    while factoring > 0
        result *= factoring - 1
        factoring -= 1
    end
    result
end