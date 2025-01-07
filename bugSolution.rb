```ruby
# Solution: Using a custom setter with type checking for more robust code
class MyClass3
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def value=(new_value)
    raise TypeError, "Value must be an Integer" unless new_value.is_a?(Integer)
    @value = new_value
  end
end

my_object3 = MyClass3.new(10)
puts my_object3.value # Output: 10

my_object3.value = 20
puts my_object3.value # Output: 20

begin
  my_object3.value = "hello"
rescue TypeError => e
  puts e.message # Output: Value must be an Integer
end
```