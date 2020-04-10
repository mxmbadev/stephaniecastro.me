class Contact < MailForm::Base
    attribute :first_name,      :validate => true
    attribute :last_name,      :validate => true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :phone,     :validate => true
    attribute :message,   :validate => true
    attribute :nickname,  :captcha  => true
  
    def headers
      {
        :subject => "Clear Choice Contact Form",
        :to => ['espinozab100@gmail.com', 'espinozasteph526@gmail.com'],
        :from => %("#{name}" <#{email}>)
      }
    end
  end