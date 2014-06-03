require 'spec_helper'
require 'rails_helper'
include AuthenticationHelper


feature "authentication" do
	let(:user) {FactoryGirl.create(:user)}

	scenario "sign in page should have content" do
		login(user)
		current_path.should eq('/users/sign_up')
	end

	scenario "email field should not be blank" do
		visit "/users/sign_up"
		page.has_content?('Sign up')
	end

	scenario "email should be present" do
		login(user)
		current_path.should_contain
end
		  describe "POST /tasks" do
    it "creates task" do
      visit tasks_path
      fill_in "New Task", :with => "mow lawn"
      click_button "Add"
      # save_and_open_page
      page.should have_content("Successfully added task.")
      page.should have_content("mow lawn")
    end
  end





