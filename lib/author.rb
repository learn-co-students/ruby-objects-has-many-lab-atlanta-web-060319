class Author
    attr_accessor :name, :posts

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @posts = [] #has_many posts 
    end

    def self.all
        @@all
    end
#add_post takes in an argument of a post and 
# associates that post with the author by 
# telling the post that it belongs to 
# that author
    def add_post(post)
        @posts << post
        post.author = self
    end 
#returns all the posts for that author
    def post
        Post.all.select {|post| post.author == self}
    end 
#creates a new post associated with an author, arg of title
    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
    end 

    def self.post_count
        Post.all.count 
    end 

end
