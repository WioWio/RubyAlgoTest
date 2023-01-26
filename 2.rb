def is_correct(vers)
    if not vers.respond_to?(:split)
        return "Put 4 nums with dots"
    end
    splitted = vers.split(/\./)
    if splitted.length() != 4
        return "Incorrect count of nums"
    end
    return true
end

def oldest(a,b)
    for i in 0..3 do
        a[i] = a[i].to_i
        b[i] = b[i].to_i
    end
    
    for i in 0..3 do
        if a[i] != b[i]
            if a[i] < b[i]
                return a.join(".")
            else
            return b.join(".")
            end
        end
    end
    return a.join(".") #"None"
end

version1,version2 = 0, 0

    loop do
        puts "Enter first version number:"
        version1 = gets
        if is_correct(version1) == true
            break
        else
            puts is_correct(version1)
        end
    end
    
    loop do
        puts "Enter second version number:"
        version2 = gets
        if is_correct(version2) == true
            break
        else
            puts is_correct(version2)    
        end
    end

    version1,version2 = version1.split(/\./), version2.split(/\./)

    puts "The oldest version is " + oldest(version1, version2)
