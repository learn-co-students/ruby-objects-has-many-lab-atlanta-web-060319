class Author
	attr_accessor :name
	@@posts = []

	def initialize(name)
		@name = name
	end

	def posts
		@@posts
	end

	def add_post(post_instance)
		@@posts.push(post_instance)
		post_instance.author = self
	end

	def add_post_by_title(title)
		a_new_post = Post.new(title)
		@@posts.push(a_new_post)
		a_new_post.author = self
	end

	def self.post_count
		@@posts.length
	end
end
