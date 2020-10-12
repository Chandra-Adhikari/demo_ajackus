class EmailNotifierMailer < ApplicationMailer

  def contact_us_notifier(contact_user)
    @user = contact_user
    mail(to: 'chandra.adhikari1994@gmail.com', subject: I18n.t('mailer.subject'))
  end
end
