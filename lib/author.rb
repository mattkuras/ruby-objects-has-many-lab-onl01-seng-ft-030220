class Author 
  attr_accessor :name, :author 
  
  def initialize(name)
    @name = name 
  end
  
  def posts 
    Post.all.map do |pos|
      if pos.author == self 
        pos 
      end
    end
  end
  
  def add_post(pos)
    pos.author = self 
  end
  
  def add_post_by_title(title)
    pos = Post.new(title)
    add_post(pos)
  end 
end