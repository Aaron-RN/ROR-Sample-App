require 'test_helper'
require 'minitest/reporters'
Minitest::Reporters.use!

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Ruby on Rails Tutorial Sample App'
  end

  test 'should get home' do
    get root_path
    assert_response :success
    assert_select 'title', @base_title
  end

  test 'should get help' do
    get help_path
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should get about' do
    get about_path
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end

  test 'should get contact' do
    get contact_path
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end

  test 'should get signup' do
    get signup_path
    assert_response :success
<<<<<<< HEAD
    assert_select 'title', @base_title
=======
    assert_select 'title', "Sign up | #{@base_title}"
>>>>>>> filling_in_layout
  end
end
