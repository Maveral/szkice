class Ksiega < ActiveRecord::Base
  
  validates :nick, :presence => true, :length => {:within => 2..20}
  validates :content, :presence => true
  
end