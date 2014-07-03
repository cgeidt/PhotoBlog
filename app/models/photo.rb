class Photo < ActiveRecord::Base
  # Paperclip
  has_attached_file :image,
                    #:styles=>{:small=>"320x240>",:thumb=>"80x60>"},
                    :path=>":rails_root/public/uploads/:class/:style/:filename",
                    :url=>"/uploads/:class/:style/:filename",
                    :default_url=>"/uploads/:class/missing.png"

  validates_attachment_content_type :image, :content_type => /image/

  validates :image, presence: true
  validates :title, presence: true
  belongs_to :album
  belongs_to :user
  has_many :comments, dependent: :destroy
end
