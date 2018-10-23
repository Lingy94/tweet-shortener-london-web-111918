# Write your code here.
def dictionary
  substitutes = { "hello" => "hi", 
                  "to" => "2",
                  "too" => "2",
                  "two" => "2",
                  "for" => "4",
                  "four" => "4",
                  "be" => "b",
                  "you" => "u",
                  "at" => "@",
                  "and" => "&",
                }
end

def word_substituter(string)
  array = string.split(" ")
  subs = dictionary.keys
    array.map! do |word|
      dictionary.fetch(word.downcase, word)
    end.join(" ")
end

def bulk_tweet_shortener(array_of_strings)
  array_of_strings.each do |bulk|
    shortened = word_substituter(bulk)
    puts shortened
  end
end

def selective_tweet_shortener(string)
  if string.length < 140
    puts string
  else
    word_substituter(string)
  end
end

def shortened_tweet_truncator