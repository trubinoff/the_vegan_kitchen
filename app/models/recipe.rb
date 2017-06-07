class Recipe < ApplicationRecord

  has_many :favorites, :dependent => :destroy

  belongs_to :type

  belongs_to :cuisine

  belongs_to :key_food

  belongs_to :user

end
