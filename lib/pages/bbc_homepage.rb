require "capybara/dsl"

class BBC_Hompage
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.bbc.co.uk/"
  SIGN_IN_LINK_ID = "#idcta-username"
  REGISTER_LINK = "Register now"
  SIGN_OUT = "Sign out"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end
  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end
  def click_sign_in_link
    sign_in_link.click
  end
  def register_link
    click_link(REGISTER_LINK)
  end
  def click_sign_out
    click_link(SIGN_OUT)
  end

end
