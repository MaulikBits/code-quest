  # @param {String[]} strs
  # @return {String[][]}
def group_anagrams(strs)
  groups = Hash.new{|hash, key| hash[key]=[]}
  strs.each do |str|
    key =  str.chars.sort.join
    groups[key] << str
  end
  return groups.values 
end
strs = ["eat","tea","tan","ate","nat","bat"]

group_anagrams(strs)