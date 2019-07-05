require 'test_helper'

#This is controller test ---functional test

class CategoriesControllerTest < ActionDispatch::IntegrationTest #ActionController::TestCase 
#  setup do
#    @category = categories(:one)
#  end
#
#  test "should get index" do
#    get categories_url
#    assert_response :success
#  end
#
#  test "should get new" do
#    get new_category_url
#    assert_response :success
#  end
#
#  test "should create category" do
#    assert_difference('Category.count') do
#      post categories_url, params: { category: { code: @category.code, description: @category.description, name: @category.name } }
#    end
#
#    assert_redirected_to category_url(Category.last)
#  end
#
#  test "should show category" do
#    get category_url(@category)
#    assert_response :success
#  end
#
#  test "should get edit" do
#    get edit_category_url(@category)
#    assert_response :success
#  end
#
#  test "should update category" do
#    patch category_url(@category), params: { category: { code: @category.code, description: @category.description, name: @category.name } }
#    assert_redirected_to category_url(@category)
#  end
#
#  test "should destroy category" do
#    assert_difference('Category.count', -1) do
#      delete category_url(@category)
#    end
#
#    assert_redirected_to categories_url
#  end
  ##the above is auto generated testing cases
  def setup 
   # @category = Category.create(name: "sports")
    @glsuser = Glsuser.create(username: "john", email: "john@example.com", password: "password", admin: true)
  end
  
  test "should get categories  index" do
   # get categories_path
    #get :index
   # assert_response :success
  end
  
  test "should get new" do
    #get new_category_path
    #sign_in_as(@user, "password")
    #get :new
    #assert_response :success
  end
  
  test "should get show" do
   # get category_path(@category)
    #get(:show, {'id' => @category.id})
    #assert_response :success
  end
  test "get new Category form and create category" do
   #   sign_in_as(@glsuser, "password")
   # get new_category_path
   #  assert_template "categories/new"
   #  assert_difference 'Category.count', 1 do
   #    post categories_path, params: { category: { name: "sportsD"}}
   #    follow_redirect!
   #  end
   #  assert_template 'categories/index'
    #assert_match "sportsD",response_body_if_short
  end
   test "should redirect create when admin not logged in" do
   # sign_in_as(@glsuser, "password")
    assert_no_difference 'Category.count' do
      post categories_path, params: { category: { name: "sportshwlo" } }
    end
    #assert_template 'categories/new'
     assert_redirected_to categories_path
  end

 
end
