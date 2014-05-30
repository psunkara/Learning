require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'kuldeep.co.in',
            :user_name            => 'kuldeep.chowhan@gmail.com',
            :password             => 'deepu3116',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
  to 'priyasunkar@gmail.com'
  from 'kuldeep.chowhan@gmail.com'
  subject 'testing sendmail'
  body 'testing sendmail'
end