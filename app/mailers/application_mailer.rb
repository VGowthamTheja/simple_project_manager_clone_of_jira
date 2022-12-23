# frozen_string_literal: true

# auto mailer for the entire application
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
