class Post
  attr_reader :author, :title, :body, :comments

  def initialize options
  @author = options[:author]
  @title =  options[:title]
  @body =   options[:body]
  @comments = options[:comments] ||[]

  end

  def insert_comment *comments
    comments.each  { |c| @comments << c}
  end

end


class Comment
  attr_reader :user, :body
  def initialize options
    @user = options[:user]
    @body = options[:body]
  end

end

post = Post.new author: "joe mad",
                title:"My first post",
                body: "I am good"
post.insert_comment Comment.new({ user: "princi",
                                  body: "this is the world of pagals"
                                  }),
                    Comment.new({ user: "priya",
                                 body: "this is world of good people"
                                 })


p post.inspect

