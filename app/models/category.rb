class Category < ActiveRecord::Base
  has_and_belongs_to_many :photo
  validates :name, presence: true, length: { minimum: 3 }
end
