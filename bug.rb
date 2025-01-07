```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value  # Output: 10
my_object.value = 20
puts my_object.value  # Output: 20

# Incorrect usage of attr_accessor leading to unexpected behavior
class MyClass2
  attr_accessor :value
end

my_object2 = MyClass2.new
my_object2.value = 10
puts my_object2.value # Output: 10

my_object2.value = "hello"
puts my_object2.value # Output: hello

my_object2.value = nil
puts my_object2.value # Output: 

```