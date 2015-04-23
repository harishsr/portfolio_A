require 'test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "navigation bar links" do 
    get root_url
    assert_template 'static_pages/home'
    assert_select "nav"
    assert_select "a[href=?]", root_path, 2
    assert_select "a[href=?]", portfolio_path
    assert_select "a[href=?]", resume_path
    assert_select "a[href=?]", about_path
  end
end
