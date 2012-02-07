class Admin < ActiveRecord::Base
  attr_accessible :password, :password_confirmation
  
  validates :password, :presence =>true, :length => { :minimum => 5, :maximum => 40 }, :confirmation =>true
end
