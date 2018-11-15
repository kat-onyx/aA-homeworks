class UserMailer < ApplicationMailer
  default from: 'signup@99kittens.com'

  def welcome_mailer(user)
    @user = user
    @url = 'http://99kittens.com/login'
    mail(to: user.email, subject: 'Welcome to the land of cats!')
  end
end
