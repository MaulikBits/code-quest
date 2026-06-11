# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    seen = {}
    nums.each do |num|
      return true if seen.key?(num)
      seen[num] = true
    end
    return false 
end