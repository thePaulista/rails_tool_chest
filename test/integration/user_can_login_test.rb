require 'test_helper'

class UserCanLoginTest < ActionDispatch::IntegrationTest
  test "registered user can login" do
    user = User.create(username: "piper", password: "password")

    visit login_path

    fill_in "Username", with: "piper"
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Welcome, piper")
  end
end
