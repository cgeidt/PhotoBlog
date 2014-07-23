# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Constants for seed control
ALBUMS = true
PHOTOS = true
COMMENTS = true
USERS = true


if ALBUMS
  Album.create!([
    {:id=>101,:title=>"Urlaubsfotos",     :description=>"Bilder aus dem letzten Urlaub",:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>102,:title=>"Landschaftsbilder",:description=>"Schöne Bilder von überall",    :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>103,:title=>"Handyfotos",       :description=>"Bilder vom Handy",             :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},

    {:id=>104,:title=>"Hintergrundbilder",:description=>"Hintergrundbilder für den PC", :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>105,:title=>"Herbst-Bilder",    :description=>"Bilder vom letzten Herbst",    :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>106,:title=>"Drei Tage am Meer",:description=>"Bilder vom Urlaub am Meer",    :user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now}
  ])
end

if PHOTOS
  Photo.create!([
    {:id=>101,:image_file_name=>'10001.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'406387',:image_updated_at=>Time.now,:title=>"Sonnenuntergang",:description=>"Der Sonnenuntergang im Tal",      :album_id=>101,:user_id=>101,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>102,:image_file_name=>'10002.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'453342',:image_updated_at=>Time.now,:title=>"Talbrücke",      :description=>"Die große Brücke",                :album_id=>101,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>103,:image_file_name=>'10003.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'479609',:image_updated_at=>Time.now,:title=>"See",            :description=>"Der See am Abend",                :album_id=>101,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>104,:image_file_name=>'10004.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'480515',:image_updated_at=>Time.now,:title=>"Altes Haus",     :description=>"Ein altes Haus in der Ebene",     :album_id=>102,:user_id=>101,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>105,:image_file_name=>'10005.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'528438',:image_updated_at=>Time.now,:title=>"Herbst",         :description=>"Bunte Blätter im Herbst",         :album_id=>102,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>106,:image_file_name=>'10006.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'621534',:image_updated_at=>Time.now,:title=>"Schloss",        :description=>"Ein altes Schloss auf einem Berg",:album_id=>102,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>107,:image_file_name=>'10007.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'548163',:image_updated_at=>Time.now,:title=>"Nacht",          :description=>"Die Stadt bei Nacht und Nebel",   :album_id=>103,:user_id=>101,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>108,:image_file_name=>'10008.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'570948',:image_updated_at=>Time.now,:title=>"Sonnenaufgang",  :description=>"Der Sonnenaufgang über der Bucht",:album_id=>103,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>109,:image_file_name=>'10009.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'581258',:image_updated_at=>Time.now,:title=>"Küste",          :description=>"Die Steinküste am blauen Meer",   :album_id=>103,:user_id=>101,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},

    {:id=>110,:image_file_name=>'10001.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'406387',:image_updated_at=>Time.now,:title=>"Sonnenuntergang",:description=>"Der Sonnenuntergang im Tal",      :album_id=>104,:user_id=>102,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>111,:image_file_name=>'10002.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'453342',:image_updated_at=>Time.now,:title=>"Talbrücke",      :description=>"Die große Brücke",                :album_id=>104,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>112,:image_file_name=>'10003.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'479609',:image_updated_at=>Time.now,:title=>"See",            :description=>"Der See am Abend",                :album_id=>104,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>113,:image_file_name=>'10004.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'480515',:image_updated_at=>Time.now,:title=>"Altes Haus",     :description=>"Ein altes Haus in der Ebene",     :album_id=>105,:user_id=>102,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>114,:image_file_name=>'10005.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'528438',:image_updated_at=>Time.now,:title=>"Herbst",         :description=>"Bunte Blätter im Herbst",         :album_id=>105,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>115,:image_file_name=>'10006.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'621534',:image_updated_at=>Time.now,:title=>"Schloss",        :description=>"Ein altes Schloss auf einem Berg",:album_id=>105,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>116,:image_file_name=>'10007.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'548163',:image_updated_at=>Time.now,:title=>"Nacht",          :description=>"Die Stadt bei Nacht und Nebel",   :album_id=>106,:user_id=>102,:private=>false,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>117,:image_file_name=>'10008.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'570948',:image_updated_at=>Time.now,:title=>"Sonnenaufgang",  :description=>"Der Sonnenaufgang über der Bucht",:album_id=>106,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now},
    {:id=>118,:image_file_name=>'10009.jpg',:image_content_type=>'image/jpeg',:image_file_size=>'581258',:image_updated_at=>Time.now,:title=>"Küste",          :description=>"Die Steinküste am blauen Meer",   :album_id=>106,:user_id=>102,:private=>true, :created_at=>Time.now,:updated_at=>Time.now}
  ])
end

if COMMENTS
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
end

if USERS
  User.create!([
    {:id=>101,:email=>'alexviern@web.de',:username=>'Alvi',:password=>'password',:reset_password_token=>nil,:reset_password_sent_at=>nil,:remember_created_at=>nil,:sign_in_count=>1,:current_sign_in_at=>Time.now,:last_sign_in_at=>Time.now,:current_sign_in_ip=>'127.0.0.1',:last_sign_in_ip=>'127.0.0.1',:confirmation_token=>nil,:confirmed_at=>nil,:confirmation_sent_at=>nil,:created_at=>Time.now,:updated_at=>Time.now},
    {:id=>102,:email=>'fake@address.com',:username=>'Fake',:password=>'password',:reset_password_token=>nil,:reset_password_sent_at=>nil,:remember_created_at=>nil,:sign_in_count=>1,:current_sign_in_at=>Time.now,:last_sign_in_at=>Time.now,:current_sign_in_ip=>'127.0.0.1',:last_sign_in_ip=>'127.0.0.1',:confirmation_token=>nil,:confirmed_at=>nil,:confirmation_sent_at=>nil,:created_at=>Time.now,:updated_at=>Time.now}
  ])
end

puts "Success: seed data loaded"
