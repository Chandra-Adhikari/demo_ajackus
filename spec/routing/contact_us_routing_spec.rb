require "rails_helper"

RSpec.describe "routes for ContactUs", :type => :routing do
  it "routes /contact to the contact_us controller" do
    expect(get("/contact")).
      to route_to("contact_us#new")
  end

  it "routes /contact_us to the contact_us controller" do
    expect(get("/contact_us")).
      to route_to("contact_us#new")
  end

  it "routes / to the contact_us controller" do
    expect(get("/")).
      to route_to("contact_us#new")
  end
end
