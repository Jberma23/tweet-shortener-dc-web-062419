def dictionary
    dictionary_hash = {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
        }
end
def word_substituter(tweet)
    tweet_array = tweet.split(" ")
    tweet_array.map do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweet)
    tweet.map do |word|
        puts word_substituter(word)
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
    if tweet.length > 140
        tweet = tweet[0..136].concat("...")
    else
        tweet
    end
end
