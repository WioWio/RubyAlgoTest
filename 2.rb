def is_correct(vers)
    unless vers.respond_to?(:split)
        return "Put 4 nums with dots"
    end
    splited = vers.split(/\./)
    if splited.length != 4
        return "Incorrect count of nums"
    end
    true
end

def oldest(a,b)
    (0..3).each { |i|
        a[i] = a[i].to_i
        b[i] = b[i].to_i
    }

    (0..3).each { |i|
        if a[i] != b[i]
            if a[i] < b[i]
                return a.join(".")
            else
                return b.join(".")
            end
        end
    }
    a.join(".") #"None"
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
