ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  def sign_in_admin
		before(:each) do
			@request.env["devise.mapping"] = Devise.mappings[:user]
			admin = FactoryBot.create(:admin)
			sign_in admin
		end
	end
end
