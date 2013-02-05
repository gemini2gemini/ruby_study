a = [1,2,3,4,5]
b = ""

def positive_only1(a)
  for n in a
    if n > 0
      b = true
    else
      b  = false
      break
    end
  end
  puts b
end

#positive_only1(a)
positive_only1([1,2,3,4])

