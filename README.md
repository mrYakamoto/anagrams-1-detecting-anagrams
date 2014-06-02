e# Anagrams 1 Detecting Anagrams

##Learning Competencies

* Model a simple real-world system in Ruby code
* Method definition, arguments, and return values
* Implement common string methods

##Summary

An **anagram** is a word formed by rearranging the letters of another word. For example, *iceman* is an anagram of *cinema* because the letters of *cinema* can be rearranged to form *iceman*.

This relationship is symmetric (i.e., *iceman* is an anagram of *cinema*, if and only if *cinema* is an anagram of *iceman*). Therefore, you'll often hear people say that "*iceman* and *cinema* are anagrams" or "*iceman* and *cinema* are anagrams of each other." Regardless of how you say it, if two words are anagrams, you can rearrange the letters of one word to spell the other.

To complete this challenge, you will write a method `is_anagram?` that determines whether or not two strings are anagrams and write tests to prove that your code works correctly.

##Releases

###Release 0 : Pseudocode Implementation of `is_anagram?`

Define your own personal process for determining if two words are anagrams of each other.  Once you define your process, try to explain it to your pair.  Was your process easy to explain? Are you sure they understood?  If it was hard to explain to another person, it will probably be difficult to write code for the computer to interpret.

Once your personal process is refactored to be easily communicated, you'll want to transform it into a set of instructions for the computer.  The first step is to write pseudocode that outlines your own mental procedure. Your pseudocode should be both easy for a human to understand and to translate into code.

**Note:** If you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or an instructor.

###Release 1 : Ruby Implementation of `is_anagram?`

Write a method `is_anagram?` that accepts two String arguments and returns `true` if the strings are anagrams and `false` if they are not.

**Guidelines:**
The following guidelines point out some edge cases of `is_anagram?`. _You should include tests for each these edge cases._

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

In comparing the two String arguments, your method is probably altering or manipulating each string.  Furthermore, it's probably altering each string in the same way.  The manipulated version of a string represents its canonical version.  If the canonical versions (i.e., the manipulated versions) of two strings are equal, the words are anagrams.

Rewrite your `is_anagram?` method to be ...

```ruby
def is_anagram?(word1, word2)
  canonical(word1) == canonical(word2)
end
```

Write a `canonical` method that handles the logic for manipulating a string into its canonical version.

```ruby
def canonical(word)
  # Magic goes here
end
```

Since this is a simple refactor, you shouldn't need to change the tests you wrote in Release 1.

##Optimize Your Learning

As you are coding consider and discuss:
  * Do I have a clear understanding of how this procedure works?
  * Am I stuck because I know what I want to do but don't know how to say it in Ruby?
  * Am I stuck because my understanding of how anagrams work is to fuzzy or mistaken?
  * Do my tests prove that my code is working correctly?
  * Why is adding the canonical method a good idea?  What principles in programming does it follow?

##Resources

* [Anagram on Wikipedia](http://en.wikipedia.org/wiki/Anagram)
