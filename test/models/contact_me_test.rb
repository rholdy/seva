require "test_helper"

class ContactMeTest < ActiveSupport::TestCase

  def setup
    @contact_me = ContactMe.new
  end

  def test_valid
    assert @contact_me.valid?
  end

end
