require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @a = " | Harish's Studio"
  end


  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get resume" do
    get :resume
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get matching titles" do 
    get :home
    assert_select "title", "Home" + @a

    get :resume
    assert_select "title", "Resume" + @a

    get :portfolio
    assert_select "title", "Portfolio" + @a 

    get :about
    assert_select "title", "About" + @a 
  end

end
