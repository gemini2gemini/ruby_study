# -*- encoding : utf-8 -*-
def array_map(a)
  result = []
  for v in a
    result << (yield v)
  end
  result
end

print "array_map([1,2,3]) {|v| v * 3} = "
p array_map([1,2,3]) {|v| v * 3}
