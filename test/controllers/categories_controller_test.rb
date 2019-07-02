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
  setup do
    @category = Category.create(name: "sports")
  end
  
  test "should get categories  index" do
    get categories_path
    #get :index
    assert_response :success
  end
  
  test "should get new" do
    get new_category_path
    #get :new
    assert_response :success
  end
  
  test "should get show" do
    get category_path(@category)
    #get(:show, {'id' => @category.id})
    assert_response :success
  end
  
  
end
