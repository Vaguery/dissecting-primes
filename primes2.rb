require "prime"

def subprimes(number)
  digits = number.digits.reverse
  digits.collect.with_index do |d,idx|
    subset = digits.dup
    subset.delete_at(idx)
    subset.join.to_i.prime?
  end
end

def all_prime?(number)
  subprimes(number).inject(number.prime?) {|b,s| b && s}
end

puts Prime.lazy.select { |p| all_prime?(p) }.
  each.take(50).force
