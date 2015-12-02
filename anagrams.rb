# PSEUDOCODE
# INPUT: (string1, string2)
# ITERATE through each char in string1
# if string2 doesn't include the char return false
# outside loop return true

# INITIAL

# def anagrams?(string1, string2)
#   string1.downcase!
#   string2.downcase!
#   string1 = string1.split('').sort
#   string2 = string2.split('').sort
#   if string1 == string2
#     return true
#   else
#     return false
#   end
# end

# REFACTOR

def anagrams?(string1, string2)
  anagram_canonical_form(string1) == anagram_canonical_form(string2)
end

def anagram_canonical_form(word)
  word.downcase!
  word.split('').sort
end






