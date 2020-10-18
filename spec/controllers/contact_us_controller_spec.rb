require "rails_helper"

RSpec.describe ContactUsController, type: :controller do
  describe "#create" do
    let(:do_request) { post :create, :params => payload }

    let(:payload) do
      { :contact_detail =>  params }
    end
    context 'when create request with valid payload' do
      let(:params) do
        {
          :first_name => 'John',
          :last_name => 'Doe',
          :email => 'test@example.com',
          :phone => '1234567890',
          :message_content => 'Text Message'
        }
      end


      it 'redirects to new_contact_us_url' do
        expect(do_request).to redirect_to(new_contact_us_url)
      end
    end

    context 'when create request with invalid phone' do
      let(:params) do
        {
          :first_name => 'John',
          :last_name => 'Doe',
          :email => 'test@example.com',
          :phone => 'test invalid',
          :message_content => 'Text Message'
        }
      end


      it 'redirects to new_contact_us_url' do
        expect(do_request).to redirect_to(new_contact_us_url)
      end
    end
  end
end
