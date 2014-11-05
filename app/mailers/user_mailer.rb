class UserMailer < ActionMailer::Base
   default from: "qasim.khokhar6@gmail.com"
  def welcome_email
  	mail(:to => "furqanh91@gmail.com", :subject => "Welcome to Illudia Tech")
    #mail.deliver!
   end
end
