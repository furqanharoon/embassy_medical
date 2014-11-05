require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
class SendersController < ApplicationController
  def send_sms
  	
  	# put your Twilio credentials here 
    account_sid = 'ACea471b13f635afc0a377bf2a5fef1811' 
    auth_token = 'b5a46250bceefe0e0abbe6cdd2241a0e' 
 
   # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 
 
    @client.account.messages.create({
      :from => '+16504378034',
      :to => '+923454163521',
      :body => "Welcome To Illudia Tech."    
    })
  end

  def send_mail
  	UserMailer.welcome_email.deliver!
    #default :from => "furqanh91@gmail.com"
  end
end
