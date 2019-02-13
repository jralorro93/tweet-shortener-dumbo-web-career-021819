require 'pry'

def dictionary
  change = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end 


def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end 

def bulk_tweet_shortener(tweets)
  tweets.map do |words|   
    puts word_substituter(words)
  end 
end 

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  tweet.split(" ").map do |phrase|
    if tweet.length > 140
      binding.pry
      word_substituter(phrase[0..140]) + "..."
    else 
      phrase
    end 
  end.join(" ")
end