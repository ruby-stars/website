class Contact < MailForm::Base
  attribute :firstName,  :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    { 
      :subject => 'Contact Form',
      :to => "evasmail@gmail.com",
      :from => %("#{firstName}" <#{email}>)
    }
  end
end
