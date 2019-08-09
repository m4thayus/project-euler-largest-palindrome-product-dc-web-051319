def palindrome(n)
    n = n.to_s
    n = n.split('')

    if  n.length < 2 
        return true
    elsif n.pop == n.shift
        return palindrome(n.join(''))
    else 
        return false
    end
end

def largest_palindrome_chunk(start, stop)
    pal = 0
    n = 1
    for i in (start...stop) do
        for j in ((start - n)...stop) do
            if palindrome(i * j) && i * j > pal
                puts "i: #{i} j: #{j}"
                pal = i * j
            end
        end
        n += 1
    end
    return pal
end

def largest_palindrome(n)
    largest_n = []
    n.times do 
       largest_n << 9 
    end

    stop = largest_n.join('').to_i
    largest_n.pop
    increment = largest_n.join('').to_i

    ans = largest_palindrome_chunk(stop - increment,  stop)
end


puts largest_palindrome(2)
puts largest_palindrome(3)
