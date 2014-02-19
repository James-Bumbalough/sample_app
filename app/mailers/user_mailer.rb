class UserMailer < ActionMailer::Base
  default from: 'james.bumbalough@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://jamesbumbalough.com/login'
    @myEmail = 'james.bumbalough@gmail.com'
    mail(to: @user.email, subject: 'Welcome to James Bumbalough.com')
    mail(to: @myEmail, subject: 'New User To James Bumbalough.com')
  end
end