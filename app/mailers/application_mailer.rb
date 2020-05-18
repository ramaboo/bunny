class ApplicationMailer < ActionMailer::Base
  default from: Settings.email.mailer
  layout 'mailer'
end
