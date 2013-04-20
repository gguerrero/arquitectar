module TestHelper
  module Session
    # Testing Sign in helper method
    def sign_in(user)
      controller.sign_in(user)
    end
  end
end