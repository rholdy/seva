require "test_helper"

class PostTest < ActiveSupport::TestCase

  def setup
    @post = Post.new
  end

  def test_valid
    assert @post.valid?
  end

end
