FactoryGirl.define do

	factory(:user) do
		email "patrick@example.com"
		password "password"
		password_confirmation "password"
	end
end