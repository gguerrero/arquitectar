module IntegrationHelper
  module Session
    # Integration Sign in method helper
    def integration_sign_in(user)
      visit signin_path
      fill_in :username, with: user.name
      fill_in :password, with: user.password
      click_button
    end
  end
end