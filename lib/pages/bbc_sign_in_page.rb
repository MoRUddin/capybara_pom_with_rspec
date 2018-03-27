require "capybara/dsl"

class BBC_SignInPage
  include Capybara::DSL

  EMAIL_ID = "user-identifier-input"
  PASSWORD_ID = "password-input"
  SUBMIT_BUTTON = "submit-button"
  EMAIL_ERROR = "#form-message-username"
  PASSWORD_ERROR = "#form-message-password"

  def fill_email(email)
    fill_in EMAIL_ID, with: email
  end
  def fill_password(password)
    fill_in PASSWORD_ID, with: password
  end
  def click_sign_in_button
    click_button(SUBMIT_BUTTON)
  end
  def email_error_message
    find(EMAIL_ERROR).visible?
  end
  def password_error_message
    find(PASSWORD_ERROR).visible?
  end
  def get_url
    current_url
  end

end
