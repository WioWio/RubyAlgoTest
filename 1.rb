def is_prime(x)
    y = 2
    while y <= Math.sqrt(x) do
        if x%y == 0
            return false
        end
        y += 1
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

print_primes(3)