def array_map(a)
  b = []
  for n in a
    b << yield(n)
  end
  b
end


puts array_map([1,2]) {|v| v * 3}
