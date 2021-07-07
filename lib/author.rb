require_relative "./post.rb"
require 'pry'

class Author

    attr_reader :name
    def initialize(name)
        @name = name
    end
   
    def posts
        Post.all.select do |posts|
            posts.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        Post.new(post_title).author = self
    end

    def self.post_count
        Post.all.length
    end


end