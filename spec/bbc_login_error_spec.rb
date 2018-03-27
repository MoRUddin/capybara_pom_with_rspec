require "spec_helper"

describe "Incorrect user details produces a valid error" do

  context "it should respond with the correct error when incorrect details are input" do

    it "should produce an error when inputting an incorrect password to a valid account" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_email("e1753019@nwytg.com")
      @bbc_site.bbc_sign_in_page.fill_password("dummy_password1234")
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.password_error_message).to be true
    end
    it "should produce an error when inputting an incorrect email with a valid password" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_email("1e1753019@nwytg.com")
      @bbc_site.bbc_sign_in_page.fill_password("dummy_password123")
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.email_error_message).to be true
    end
    it "should produce an error when inputting an incorrect email and password" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_email("cbeq")
      @bbc_site.bbc_sign_in_page.fill_password("dummy123")
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.email_error_message).to be true
    end
    it "should not produce an error when inputting a correct password to a valid account" do
      @bbc_site = BBC_Site.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.fill_email("e1753019@nwytg.com")
      @bbc_site.bbc_sign_in_page.fill_password("dummy_password123")
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.get_url).to eq("https://www.bbc.co.uk/")
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_homepage.click_sign_out
      expect(@bbc_site.bbc_sign_in_page.get_url).to eq("https://account.bbc.com/signout")
    end

  end
  context "Registration page journey" do
    it "should succeed" do
      @bbc_site = BBC_Site.new
      @bbc_site.get_temporary_email.visit_homepage
      address = @bbc_site.get_temporary_email.get_address
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_homepage.register_link
      @bbc_site.bbc_registration.click_over_13
      @bbc_site.bbc_registration.enter_dob_days("16")
      @bbc_site.bbc_registration.enter_dob_months("3")
      @bbc_site.bbc_registration.enter_dob_years("1995")
      @bbc_site.bbc_registration.click_continue
      @bbc_site.bbc_registration.fill_email(address)
      @bbc_site.bbc_registration.fill_password("dummy_password123")
      @bbc_site.bbc_registration.fill_postcode("E1 7EE")
      @bbc_site.bbc_registration.select_gender("Male")
      @bbc_site.bbc_registration.select_opt("opt out")
      @bbc_site.bbc_registration.click_register
      sleep 2
    end
  end

end
