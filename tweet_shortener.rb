def dictionary 
  substitute_words = {"hello" => "hi",
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
              
  arr_tweet = tweet.split(" ")
  dictionary.each do |key, value|
    
    i=0  
			while i<arr_tweet.length
		      if arr_tweet[i] == key
			     arr_tweet[i] = value  
			   end 
		     i +=1
	     	end
	end
     arr_tweet.join(" ")               
end

def bulk_tweet_shortener(tweet)
  puts word_substituter(tweet)
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
  tweet[0...137] << ""...""
 else
  tweet
 end
end