class BoardMailer < ApplicationMailer
  default from: 'do-not-reply@scottsdalepalms.com'

  def board_member_emails
    User.admin.pluck(:email)
  end

  def notification_email(support_request)
    @support_request = support_request
    mail(to: board_member_emails, subject: 'Scottsdale Palms HOA Board Alert')
  end
end
