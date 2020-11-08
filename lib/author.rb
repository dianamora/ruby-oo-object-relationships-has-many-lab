class Author
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self}
    end
   

    def add_post(title)
        title.author = self
    end

    def add_post_by_title(title)
        title = Post.new(title)
        title.author = self
    end

    def self.post_count
        Post.all.count
    end
end
