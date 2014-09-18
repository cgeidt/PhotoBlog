class Photo < ActiveRecord::Base
  # Paperclip
  # :styles=>{:small=>"320x240>",:thumb=>"80x60>"}
  has_attached_file :image, { :path=>":rails_root/public/uploads/:class/:style/:filename",
                              :url=>"/uploads/:class/:style/:filename",
                              :default_url=>"/uploads/:class/missing.png",
                              :preserve_files=>"true", }

  validates_attachment_content_type :image, :content_type => /image/

  validates :image, presence: true
  validates :title, presence: true
  belongs_to :album
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :category

  scope :is_public,->{where(private:false)}
  scope :is_private,->{where(private:true)}
end
