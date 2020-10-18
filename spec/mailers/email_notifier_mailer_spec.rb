require "rails_helper"

RSpec.describe EmailNotifierMailer, :type => :mailer do
  describe "notify" do
    let(:contact_user) do
      ContactDetail.create(first_name: 'John', last_name: 'Doe',
        email: 'test@example.com', phone: '1234567890', message_content: 'Test content')
    end
    let(:mail) { EmailNotifierMailer.contact_us_notifier(contact_user) }

    it "renders the headers" do
      expect(mail.subject).to eq("ContactUs Email Notifier")
      expect(mail.to).to eq(["info@ajackus.com"])
      expect(mail.from).to eq(["no-reply@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
