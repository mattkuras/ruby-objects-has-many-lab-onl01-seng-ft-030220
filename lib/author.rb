class Author 
  attr_accessor :name 
  
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
  
end