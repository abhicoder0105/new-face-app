class UserMailer < ApplicationMailer
  default from: "sharmaabhishek9770@gmail.com"

  def welcome_email(email)
    debugger
    # @user = params[:sign_up]
    
    # @url  = 'http://example.com/login'
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
