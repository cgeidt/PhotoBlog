class Photo < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true, uniqueness: true

  belongs_to :album
end
