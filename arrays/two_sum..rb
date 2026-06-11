# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  seen = {}
  nums.each_with_index do |n, i|
    answer = target - n
    return [seen[answer], i] if seen.key?(answer)
    seen[n] = i
  end 
end