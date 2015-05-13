
require_relative "module"
require_relative "tweetable"

post = Blog::Post.new author: "Ritu",
                      title: "My mother",
                      body: nil

post.insert_comment Blog::Comment.new user: "joe mack",body: "User here!"
post.insert_comment Blog::Comment.new user:nil, body: "NO user here"
