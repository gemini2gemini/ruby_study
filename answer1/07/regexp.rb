# -*- encoding : utf-8 -*-
def right_method_name?(name)
  name =~ /^[a-z_]\w*[!?]?$/
end

def test(name)
  if right_method_name?(name)
    puts name + " OK"
  else
    puts name + " NG"
  end
end


test('abc')
test('_abc')
test('_abc?')
test('_abc!')
test('9abc')
test('_abc!x')

