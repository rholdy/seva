require "test_helper"

class StaticPageTest < ActiveSupport::TestCase

  def setup
    @static_page = StaticPage.new
  end

  def test_valid
    assert @static_page.valid?
  end

end
