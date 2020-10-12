class ContactDetail < ApplicationRecord

  after_save :send_email_notifier

  validates :first_name, :last_name, :email, :message_content, presence: true
  validates :phone, numericality: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def send_email_notifier
    EmailNotifierMailer.contact_us_notifier(self).deliver_now
  end
end
