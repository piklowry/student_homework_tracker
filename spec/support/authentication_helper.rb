module AuthenticationHelper 

	def login(user)
		visit "/users/sign_up"
		fill_in "email", with: user.email
		fill_in "password", with: user.password
		click_button "Sign up"

	end
end
