# frozen_string_literal: true

class Contact < MailForm::Base
  attribute :firstName, validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   validate: true

  def headers
    {
      subject: 'Contact Form',
      to: 'contact@rubystars.dev',
      from: %("#{firstName}" <#{email}>)
    }
  end
end
