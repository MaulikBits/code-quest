# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  actual = {}
  s.chars.each do |c|
    if actual.key?(c)
      actual[c] = actual[c] + 1
    else 
      actual[c] = 1 
    end 
  end 

  t.chars.each do |t|
    if actual.key?(t) 
      actual[t] = actual[t] - 1 
      if actual[t] == 0 
        actual.delete(t)
      end 
    else 
      return false
    end  
  end  
  actual.empty?      
end
