def times(count)
  for i in 1..count
    yield i
  end
end

times(3) {|n| puts n}
