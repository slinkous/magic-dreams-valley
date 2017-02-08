class Character < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :species, presence: true

  belongs_to :user

end
