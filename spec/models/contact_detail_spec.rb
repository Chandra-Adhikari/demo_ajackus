require "rails_helper"

RSpec.describe ContactDetail, :type => :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :message_content }
  end

  describe '#email' do
    it { is_expected.not_to allow_value('testemail').for(:email) }
    it { is_expected.to allow_value("testemail@example.com").for(:email) }
  end

  describe '#phone' do
    it { is_expected.not_to allow_value('testemail').for(:phone) }
    it { is_expected.to allow_value("1234567890").for(:phone) }
  end
end
