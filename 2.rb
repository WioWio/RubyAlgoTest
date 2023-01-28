def is_correct(vers)
    if (vers=~ /^([0-9]+\.){3}[0-9]+$/) == 0
        true
    else false
    end
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
        if is_correct(version1)
            break
        else
            puts "Incorrect input."
        end
    end
    
    loop do
        puts "Enter second version number:"
        version2 = gets
        if is_correct(version2)
            break
        else
            puts "Incorrect input."
        end
    end

    version1,version2 = version1.split(/\./), version2.split(/\./)

    puts "The oldest version is " + oldest(version1, version2)
