digits = [1,2,3,4,5,6,8,9,0]

def sum(nums)
  nums.inject(:+)
end

def divisible?(n1,n2)
  n1 % n2 == 0
end

def all_subsets(digits)
  digits.collect.with_index do |d,idx|
    subset = digits.dup
    subset.delete_at(idx)
    subset
  end
end

def all_subset_sums(digits)
  all_subsets(digits).collect {|s| sum(s)}
end

def avoids_factor?(digits,factor)
  all_sums = all_subset_sums(digits) << sum(digits)
  all_sums.collect {|s| divisible?(s,factor)}.none?
end

winners = []
10000.times do
  trial = 9.times.collect {|i| digits.sample()}.sort.reverse

  works = avoids_factor?(trial,3)

  if (works && !winners.include?(trial))
    winners << trial
    # puts trial.inspect
  end
end

puts winners.sort.reverse.inspect
