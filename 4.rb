n, k, gap = 120, 1, 10 # from, to, line length: [[111, 112, 113, ..., 120]
                                               # [110, 109, 108, ..., 100]
                                               # ...]
array = []
i = gap
while  n>= k do
    little_array = Array.new(10)
    if i == gap
        while i > 0 do
            i -= 1
            little_array[i] = n
            if n>0
                n -= 1
            end
        end
    else
        while i < gap do
            little_array[i] = n
            i += 1
            if n>0
                n -= 1
            end
        end
    end
    array.append(little_array)
end

print array
