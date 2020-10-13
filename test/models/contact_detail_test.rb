require 'test_helper'

class ContactDetailTest < ActiveSupport::TestCase

  test "should not save contact_detail without first_name" do
    contact_detail = ContactDetail.new
    assert_not contact_detail.save
  end

  test "should not save contact_detail without last_name" do
    contact_detail = ContactDetail.new
    assert_not contact_detail.save
  end

  test "should not save contact_detail without email" do
    contact_detail = ContactDetail.new
    assert_not contact_detail.save
  end

  test "should not save contact_detail without message_content" do
    contact_detail = ContactDetail.new
    assert_not contact_detail.save
  end
end
