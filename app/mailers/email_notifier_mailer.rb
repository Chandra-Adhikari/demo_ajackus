class EmailNotifierMailer < ApplicationMailer

  def contact_us_notifier(contact_user)
    @user = contact_user
    mail(to: 'info@ajackus.com', subject: I18n.t('mailer.subject'))
  end
end
