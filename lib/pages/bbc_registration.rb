require "capybara/dsl"

class BBC_Registration
  include Capybara::DSL

  OVER_13 = "13 or over"
  DAY_INPUT = "day-input"
  MONTH_INPUT = "month-input"
  YEAR_INPUT = "year-input"
  CONTINUE_BUTTON = "submit-button"
  EMAIL_ID = "user-identifier-input"
  PASSWORD_ID = "password-input"
  POSTCODE_ID = "postcode-input"
  GENDER_DROPDOWN = "gender-input"
  OPT_IN = "Yes please"
  OPT_OUT = "No, thanks"
  REGISTER_BUTTON = "Register"

  def click_over_13
    click_link(OVER_13)
  end
  def enter_dob_days(days)
    fill_in(DAY_INPUT, with: days)
  end
  def enter_dob_months(months)
    fill_in(MONTH_INPUT, with: months)
  end
  def enter_dob_years(years)
    fill_in(YEAR_INPUT, with: years)
  end
  def click_continue
    click_button(CONTINUE_BUTTON)
  end
  def fill_email(email)
    fill_in EMAIL_ID, with: email
  end
  def fill_password(password)
    fill_in PASSWORD_ID, with: password
  end
  def fill_postcode(postcode)
    fill_in POSTCODE_ID, with: postcode
  end
  def select_gender(gender)
    select gender, from: GENDER_DROPDOWN
  end
  def find_opt_options
    all(:css, ".button__radio-label")
  end
  def select_opt(option)
    if option == "opt in"
      click_opt(OPT_IN)
    elsif option == "opt out"
      click_opt(OPT_OUT)
    end
  end
  def click_opt(opt_choice)
    find_opt_options.each do |option|
      if option.text == opt_choice
        option.click
      end
    end
  end
  def click_register
    click_button(REGISTER_BUTTON)
  end

end
