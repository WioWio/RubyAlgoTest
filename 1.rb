def is_prime(x)
    y = x - 1
    while y >= 2 do
        if x%y == 0
            return false
        end
        y -= 1
    end
    return true
end

def print_primes(x)
    y = 2
    while y <= x do
        if  is_prime(y) == false
            puts y
        end
        y += 1
    end
end

print_primes(25)