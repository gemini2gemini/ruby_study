# -*- encoding : utf-8 -*-
def positive_only1(a)
  for v in a
    return false  if v < 0
  end
  return true
end

def positive_only2(a)
  a.all? {|v| v >= 0}
end

print "positive_only1([1,3,4]) = ", positive_only1([1,3,4]), "\n"
print "positive_only1([1,3,-4,1]) = ", positive_only1([1,3,-4,1]), "\n"
print "positive_only2([1,3,4]) = ", positive_only2([1,3,4]), "\n"
print "positive_only2([1,3,-4,1]) = ", positive_only2([1,3,-4,1]), "\n"
  
