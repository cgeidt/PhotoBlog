class Photo < ActiveRecord::Base
  #mount_uploader :url, FileUploader
  validates :url, presence: true
  validates :filename, presence: true
  validates :title, presence: true
  belongs_to :album
  has_many :comments, dependent: :destroy
end
