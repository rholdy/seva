class StaticPage < ActiveRecord::Base
  attr_accessible :about, :contact, :home, :pricing
end
