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
  subs = substituter.keys
  array.each do |word| 
    if subs.include?(word)
      return word
    end
  end
end