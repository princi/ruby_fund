module Tweetable
  class NoBodyError < StandardError;

    def tweet
      raise NoBodyError if @body.nil?
      puts "tweeted the following: #{@body}"

    end
  end
end

