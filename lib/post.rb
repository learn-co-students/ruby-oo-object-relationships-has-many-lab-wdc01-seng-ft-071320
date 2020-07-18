

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

def author=(author)
    @author = author
end

def author_name
    if not self.author then 
        nil
    else 
        self.author.name
    end
end



    




end    