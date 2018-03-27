require "capybara/dsl"

class BBC_TemporaryEmail
  attr_accessor :address
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.10minutemail.com/"
  EMAIL = "#mailAddress"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end
  def get_address
    @address = find(EMAIL)["value"]
  end

end
