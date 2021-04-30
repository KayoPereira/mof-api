class UserMailer < ApplicationMailer
  default from: 'notifications@exemple.com'

  def welcome_email
    @user = params[:user]
    @url = 'http://localhost:3000/users/sign_up'
    mail(to: user.email, subject: 'Boas vindas ao nosso incrível site!')
  end
end
