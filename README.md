# Anagrams 1 Detecting Anagrams

##Learning Competencies

* Model a simple real-world system in Ruby code
* Method definition, arguments, and return values
* Implement common string methods

##Summary

An **anagram** is a word formed by rearranging the letters of another word. For example, *iceman* is an anagram of *cinema* because the letters of *cinema* can be rearranges to form *iceman*.

This relationship is symmetric (i.e., *iceman* is an anagram of *cinema*, if and only if *cinema* is an anagram of *iceman*). Therefore, you'll often hear people say that "*iceman* and *cinema* are anagrams" or "*iceman* and *cinema* are anagrams of each other." Regardless of how you say it, if two words are anagrams, you can rearrange the letters of one word to spell the other.

To complete this challenge, write a method `is_anagram?` that accepts two String arguments and returns `true` if the strings are anagrams and `false` if they are not.  Don't worry about whether or not the strings are real words.

##Releases

###Release 0 : Pseudocode Implementation of `is_anagram?`

Define your own personal process for determining if two words are anagrams of each other.  Once you define your process, try to explain it to your pair.  Was your process easy to explain? Are you sure they understood?  If it was hard to explain to another person, it will probably be difficult to write code for the computer to interpret.

Once your personal process is refactored to be easily communicated, you'll want to transform it into a set of instructions for the computer.  The first step is to write pseudocode that outlines your own mental procedure. Your pseudocode should be both easy for a human to understand and to translate into code.

**Note:** If you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or an instructor.

###Release 1 : Ruby Implementation of `is_anagram?`

Write a method `is_anagram?` that accepts two String arguments and returns `true` if the strings are anagrams and `false` if they are not.  

**Guidelines:**

* The order of the arguments should not matter.

  ```ruby
  is_anagram?('cinema', 'iceman') # => true
  is_anagram?('iceman', 'cinema') # => true
  ```

* A word is an anagram of itself.

  ```ruby
  is_anagram?('pants', 'pants')   # => true
  ```

* Anagrams are case-insensitive
  
  ```ruby
  is_anagram?('CiNemA', 'iceman') # => true
  ```

* The String argumenets don't need to be valid English words.

  ```ruby
  is_anagram('abcde2', 'c2abed')  # => true
  is_anagram?('kilso', 'osilk')   # => true
  ```

###Release 2 : Canonical Version

Is there a way to transform a word into a "canonical" representation such that two words have the same canonical representation precisely when they're anagrams of each other?

That is, can you define a method `canonical` which lets us write `is_anagram?` like this?

```ruby
def canonical(word)
  # Magic goes here
end

def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end
```

##Optimize Your Learning

As you are coding consider and discuss: 
  * Do I have a clear understanding of how this procedure works?
  * Am I stuck because I know what I want to do but don't know how to say it in Ruby?
  * Am I stuck because my understanding of how anagrams work is to fuzzy or mistaken?
  * Why is adding the canonical method a good idea?  What principles in programming does it follow?

##Resources

* [Anagram on Wikipedia](http://en.wikipedia.org/wiki/Anagram)
