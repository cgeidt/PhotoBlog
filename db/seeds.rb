# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Album.create!({:id=>1,:title=>"Urlaubsfotos",:description=>"Bilder aus dem letzten Urlaub",:created_at=>Time.now,:updated_at=>Time.now})
Album.create!({:id=>2,:title=>"Partyfotos",  :description=>"Bilder von der letzten Party", :created_at=>Time.now,:updated_at=>Time.now})
Album.create!({:id=>3,:title=>"Handyfotos",  :description=>"Bilder vom Handy",             :created_at=>Time.now,:updated_at=>Time.now})

Photo.create!({:id=>1,:url=>'C:\bild1.jpg',:title=>"Strand",           :description=>"Der Strand im Urlaub",         :album_id=>1,:created_at=>Time.now,:updated_at=>Time.now})
Photo.create!({:id=>2,:url=>'C:\bild2.jpg',:title=>"Sonnenuntergang",  :description=>"Der Sonnenuntergang am Strand",:album_id=>1,:created_at=>Time.now,:updated_at=>Time.now})
Photo.create!({:id=>3,:url=>'C:\bild3.jpg',:title=>"Partyvorbereitung",:description=>"Foto vom Aufbauen",            :album_id=>2,:created_at=>Time.now,:updated_at=>Time.now})
Photo.create!({:id=>4,:url=>'C:\bild4.jpg',:title=>"Beginn",           :description=>"Der erste Gast",               :album_id=>2,:created_at=>Time.now,:updated_at=>Time.now})
Photo.create!({:id=>5,:url=>'C:\bild5.jpg',:title=>"Hund",             :description=>"Ein Hund im Park",             :album_id=>3,:created_at=>Time.now,:updated_at=>Time.now})
Photo.create!({:id=>6,:url=>'C:\bild6.jpg',:title=>"Auto",             :description=>"Ein parkendes Auto",           :album_id=>3,:created_at=>Time.now,:updated_at=>Time.now})

puts "Success: seed data loaded"
