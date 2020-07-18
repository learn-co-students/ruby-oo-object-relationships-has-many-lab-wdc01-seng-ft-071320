

class Author
    attr_accessor :name

 @@all = []

def initialize(name)
    @name = name
    @@all << self  
end

def self.all
    @@all
end

def posts 
   Post.all.select {|this_post| this_post.author == self}
end

def add_post(post)
    @@all << post
    post.author = self
end

def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
end

def self.post_count
    Post.all.count  
end









end
