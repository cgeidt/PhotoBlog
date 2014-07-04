class Album < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  belongs_to :user
  has_many :photos, dependent: :destroy

  scope :is_public,->{where(private:false)}
  scope :is_private,->{where(private:true)}
end
