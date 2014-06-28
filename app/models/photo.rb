class Photo < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

  belongs_to :album
  has_many :comments, dependent: :destroy
end
