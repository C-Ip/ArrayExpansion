=begin
  Homework 5/6
  Calvin Ip
  5/8/17
  ArrayExpansion.rb
  Expands the Array class by adding a limited? and sorted? method.
=end

class Array

  # Initializer for array
  def natural(n)
    (1..n).to_a
  end

  # If all values in the array is within a range, return true otherwise return false
  def limited?(amin, amax)
    self.each do |i|
      return false unless amin <= i && i <= amax
    end
    return true
  end

  # Checks if the array is sorted, and if it's in increasing order or decreasing order
  def sorted?
    self.each_with_index do |x, index|
      break unless x <= self[index + 1] if index != self.length - 1
      return "+1" if index == self.length - 1
    end
    self.each_with_index do |x, index|
      break unless x >= self[index + 1] if index != self.length - 1
      return "-1" if index == self.length - 1
    end
    return "0"
  end
end

# Examples of the two new method uses.
array = [3,6,1,23,15,75,3]
puts "Array: #{array}"; puts "Array is limited from (2,10): #{array.limited?(2,10)}"
puts "Array sorted: #{array.sorted?}"; puts

array = [4,5,6,7,8]
puts "Array: #{array}"; puts "Array is limited from (2,10): #{array.limited?(2,10)}"
puts "Array sorted: #{array.sorted?}"; puts

array = [16,10,6,2,1]
puts "Array: #{array}"; puts "Array is limited from (2,10): #{array.limited?(2,10)}"
puts "Array sorted: #{array.sorted?}"; puts
