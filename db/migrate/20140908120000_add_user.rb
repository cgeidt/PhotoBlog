class AddUser < ActiveRecord::Migration

  def self.up
    User.create!([
      {
        :id=>666,
        :email=>'master@main.com',
        :username=>'master',
        :password=>'password',
        :reset_password_token=>nil,
        :reset_password_sent_at=>nil,
        :remember_created_at=>nil,
        :sign_in_count=>1,
        :current_sign_in_at=>Time.now,
        :last_sign_in_at=>Time.now,
        :current_sign_in_ip=>nil,
        :last_sign_in_ip=>nil,
        :confirmation_token=>nil,
        :confirmed_at=>Time.now,
        :confirmation_sent_at=>Time.now,
        :created_at=>Time.now,
        :updated_at=>Time.now
      }
    ])
  end

end
