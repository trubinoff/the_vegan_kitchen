class KeyFood < ApplicationRecord

  has_many :recipes, :dependent => :nullify
  
end
