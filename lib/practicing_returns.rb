require 'pry'

def hello(array)
  i = 0
  new_arr = []
  while i < array.length
    yield(new_arr << "Hi, #{ array[i] }")
    i += 1
  end
  new_arr
end

binding.pry
# hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
