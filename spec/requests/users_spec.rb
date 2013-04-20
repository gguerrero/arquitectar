require 'spec_helper'

describe "Users" do
  
  describe "sign in/out" do
    
    describe "failure" do
      it "should not sign a user in" do
        visit signin_path
        fill_in :username, with: ""
        fill_in :password, with: ""
        click_button
        response.should have_selector("div.flash-content.error", content: "Invalid")
      end
    end
    
    describe "success" do
      it "should sign a user in and out" do
        integration_sign_in(FactoryGirl.create(:user))
        controller.should be_signed_in
        click_link "Sign out", method: 'delete'
        controller.should_not be_signed_in
      end
    end
  end
end
