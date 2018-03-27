require_relative "./pages/bbc_homepage"
require_relative "./pages/bbc_sign_in_page"
require_relative "./pages/bbc_temporary_email"
require_relative "./pages/bbc_registration"

class BBC_Site
  def bbc_homepage
    BBC_Hompage.new
  end
  def bbc_sign_in_page
    BBC_SignInPage.new
  end
  def get_temporary_email
    BBC_TemporaryEmail.new
  end
  def bbc_registration
    BBC_Registration.new
  end
end
