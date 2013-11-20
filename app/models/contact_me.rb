class ContactMe < ActiveRecord::Base
  attr_accessible :body, :email, :subject
end
