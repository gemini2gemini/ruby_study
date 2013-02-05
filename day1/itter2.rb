a = [1,2,0,4,5]

def positive_only2(a)
  puts a.all? {|v| v >= 0}
end

#positive_only2(a)

positive_only2([2,2,0,4])

positive_only2([2,2,3,4])
