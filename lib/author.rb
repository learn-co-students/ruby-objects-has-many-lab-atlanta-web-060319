require "pry"

class Author

    attr_accessor :name
    attr_reader :posts

    @@all = []
    @@post_count = 0

    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@post_count += 1
    end

    def add_post_by_title (title)
        new_post = Post.new(title)
        new_post.author = self
        @posts << new_post
        @@post_count += 1
    end

    def self.post_count
        @@post_count
    end

end

# Author
#   #new
#     is initialized with a name (FAILED - 1)
#   #name
#     has an attr_accessor for name (FAILED - 2)
#   #posts
#     has many posts (FAILED - 3)
#   #add_post
#     takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 4)
#   #add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 5)
#   .post_count
#     is a class method that returns the total number of posts associated to all existing authors (FAILED - 6)

