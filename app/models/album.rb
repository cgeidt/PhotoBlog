class Album < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true

  has_many :photos, dependent: :destroy
end
