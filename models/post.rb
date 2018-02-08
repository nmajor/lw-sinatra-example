class Post
  attr_accessor :title, :body
  def initialize(attr = {})
    @title = attr[:title]
    @body = attr[:body]
  end
end