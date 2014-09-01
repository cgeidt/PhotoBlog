class CreateCategoriesPhotosJoinTable < ActiveRecord::Migration
  def change
    create_join_table :photos, :categories do |t|
      t.index [:category_id, :photo_id], unique: true
    end
  end
end
