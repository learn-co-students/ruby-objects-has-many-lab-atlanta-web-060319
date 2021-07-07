require "pry"


class Post

attr_accessor :title, :author

    @@all = []

    def initialize(title)
        @title = title 
        @@all << self
    end 

    def self.all
        @@all
    end 

    def author_name
        if self.author.nil?
            self.author
          else
            self.author.name
          end
    end

end

# Post
#   #new
#     is initialized with an argument of a title (FAILED - 7)
#     pushes new instances into a class variable called @@all upon initialization (FAILED - 8)
#   @@all
#     is a class variable set to an array (FAILED - 9)
#   .all
#     is a class method that returns an array of all post instances that have been created (FAILED - 10)
#   #title
#     has a title (FAILED - 11)
#   #author
#     belongs to an author (FAILED - 12)
#   #author_name
#     knows the name of its author (FAILED - 13)
#     returns nil if the post does not have an author (FAILED - 14)

