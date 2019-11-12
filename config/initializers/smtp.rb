# frozen_string_literal: true

# if you are using the API key
ActionMailer::Base.smtp_settings = {
  domain: 'rubystarsberlin.herokuapp.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  user_name: 'apikey',
  password: ENV['SENDGRID_API_KEY']
}
