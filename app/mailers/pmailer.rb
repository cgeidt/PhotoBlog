class Pmailer < ActionMailer::Base

  default from: "photoblog.a9s@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://photoblog.de.a9sapp.eu/users/sign_in"
    mail(to: @user.email, subject: 'Welcome to PhotoBlog')
  end

end
