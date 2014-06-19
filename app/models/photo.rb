class Photo < ActiveRecord::Base
  belongs_to :album
  validates :title, presence: true
  validates :url, presence: true
end
