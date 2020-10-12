class ContactUsController < ApplicationController
  def new
  end

  def create
    @contact_detail = ContactDetail.new(message_params)
    if @contact_detail.save
      redirect_to new_contact_us_path
      flash[:notice] = I18n.t('response.success')
    else
      redirect_to new_contact_us_path
      flash[:error] = @contact_detail.errors.full_messages.first
    end
  end

  private

  def message_params
    params.require(:contact_detail).permit(:first_name, :last_name, :email, :phone, :message_content)
  end
end
