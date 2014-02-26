# Anagrams 1 Detecting Anagrams

##Learning Competencies

* Model a simple real-world system in Ruby code
* Method definition, arguments, and return values
* Implement common string methods

##Summary

An **anagram** is a word formed by rearranging the letters of another word, that is, *iceman* is an anagram of *cinema*.

Since this relationship is symmetric–X is an anagram of Y if and only if Y is an anagram of X–you'll often hear people say that, e.g., "iceman and cinema are anagrams" or "iceman and cinema are anagrams of each other." They all mean the same thing: you can rearrange the letters of one word to spell another.

We're going to write a method `is_anagram?` that takes two strings as input and returns `true` if the two strings are anagrams and `false` otherwise.

For now we won't care if the strings are valid English words or not.

##Releases

###Release 0 : Pseudocode Implementation of `is_anagram?`

Before you start writing a single line of Ruby code, sit down and ask yourself, "Do I know how to tell whether two words are anagrams?"

Your `is_anagram?` method will be a (digital, computerized, mechanical) model of the (analog, organic, human) process by which you determine whether two words are anagrams.

Once you're confident that *you* can tell whether two words are anagrams, reflect on your own or with your pair about how that process works. Can you explain it to your pair in a way that they understand? How do you know whether they've understood you?

If you can't explain it to another person, you'll have a hard time "explaining" it to a computer via Ruby code!

Finally, write pseudocode that outlines your own mental procedure in a way that's easy for a human to both understand and translate into their favorite programming language.

**Note:** If you have spent more than 20 minutes trying to figure out how to do this, check in with a fellow student or staff. There's a very simple way to implement this!

###Release 1 : Ruby Implementation of `is_anagram?`

Write a method `is_anagram?` in Ruby that takes two strings as input and returns `true` if the two strings are anagrams and `false` otherwise. The method should be *case insensitive*. For example,

```ruby
# The method should be symmetric, i.e.,
# is_anagram?(word1, word2) == is_anagram?(word2, word1) for any two words
is_anagram?('cinema', 'iceman') # => true
is_anagram?('iceman', 'cinema') # => true

# Pedantically, a word is always an anagram of itself.
# This is called being "reflexive," i.e., is_anagram?(word, word) == true for any word
is_anagram?('pants', 'pants')   # => true

# is_anagram? should be case-insensitive
is_anagram?('CiNemA', 'iceman') # => true

# Notice: acres, cares, and scare are all anagrams of each other
is_anagram?('acres', 'cares')   # => true
is_anagram?('cares', 'scare')   # => true
is_anagram?('scare', 'acres')   # => true

# The "words" don't need to be valid English words
is_anagram('abcde2', 'c2abed')  # => true

is_anagram?('pants', 'turtle')  # => false
is_anagram?('123123', 'kjhasd') # => false
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
