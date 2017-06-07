class Type < ApplicationRecord

  has_many :recipes, :dependent => :destroy
  
end
