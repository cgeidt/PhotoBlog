class Album < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  belongs_to :user
  has_many :photos, dependent: :destroy
end
