# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Album.create!([
  {:id=>101,:title=>"Urlaubsfotos",:description=>"Bilder aus dem letzten Urlaub",:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>102,:title=>"Partyfotos",  :description=>"Bilder von der letzten Party", :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>103,:title=>"Handyfotos",  :description=>"Bilder vom Handy",             :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now}
])

Photo.create!([
  {:id=>101,:url=>'10001.jpg',:filename=>'10001.jpg',:title=>"Strand",           :description=>"Der Strand im Urlaub",         :album_id=>101,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>102,:url=>'10002.jpg',:filename=>'10002.jpg',:title=>"Sonnenuntergang",  :description=>"Der Sonnenuntergang am Strand",:album_id=>101,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>103,:url=>'10003.jpg',:filename=>'10003.jpg',:title=>"Fische",           :description=>"Kleine Fische im Wasser",      :album_id=>101,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>104,:url=>'10004.jpg',:filename=>'10004.jpg',:title=>"Partyvorbereitung",:description=>"Foto vom Aufbauen",            :album_id=>102,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>105,:url=>'10005.jpg',:filename=>'10005.jpg',:title=>"Beginn",           :description=>"Der erste Gast",               :album_id=>102,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>106,:url=>'10006.jpg',:filename=>'10006.jpg',:title=>"Stimmung",         :description=>"Alle tanzen",                  :album_id=>102,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>107,:url=>'10007.jpg',:filename=>'10007.jpg',:title=>"Hund",             :description=>"Ein Hund im Park",             :album_id=>103,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>108,:url=>'10008.jpg',:filename=>'10008.jpg',:title=>"Auto",             :description=>"Ein parkendes Auto",           :album_id=>103,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>109,:url=>'10009.jpg',:filename=>'10009.jpg',:title=>"Ball",             :description=>"Cooler Ball",                  :album_id=>103,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now}
])

Comment.create!([
  {:id=>101,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>101,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>102,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>101,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>103,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>101,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>104,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>102,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>105,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>102,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>106,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>102,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>107,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>103,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>108,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>103,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>109,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>103,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>110,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>104,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>111,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>104,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>112,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>104,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>113,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>105,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>114,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>105,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>115,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>105,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>116,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>106,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>117,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>106,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>118,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>106,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>119,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>107,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>120,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>107,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>121,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>107,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>122,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>108,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>123,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>108,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>124,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>108,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>125,:commenter=>'John Doe',:body=>'Ich bin Kommentar Nummer eins',:photo_id=>109,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>126,:commenter=>'Joan Doe',:body=>'Ich bin Kommentar Nummer zwei',:photo_id=>109,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now},
  {:id=>127,:commenter=>'Jane Doe',:body=>'Ich bin Kommentar Nummer drei',:photo_id=>109,:user_id=>101,:created_at=>Time.now,:updated_at=>Time.now}
])

puts "Success: seed data loaded"
