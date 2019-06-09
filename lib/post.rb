class Post
   attr_accessor :title

   @@all = []

   def initialize(title)
     @title = title
     author.post << self
   end 

# Post #author_name knows the name of its author
# Post #author_name returns nil if the post does not have an author   
   def author_name
    self.author.name if author 
   end


end 