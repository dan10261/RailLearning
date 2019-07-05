require 'test_helper'
class CreateCategoriesTest  < ActionDispatch::IntegrationTest
	 def setup 
		@glsuser = Glsuser.create(username: "john", email: "john@example.com", password: "password", admin: true)
	  end
	test "test_index_response" do 
	    get categories_path
	    assert_response :success
	    assert_template 'categories/index'
  	end
	test "get new category form and create category" do
		 sign_in_as(@glsuser, "password")
		get new_category_path
		assert_template 'categories/new'

		assert_difference 'Category.count', 1 do
			post categories_path, params:  {category: {name: "sportsss"}}
			follow_redirect!
		end
		assert_template 'categories/index'
		assert_match "sportsss", response.body
	end

	test "invalid category submission results in failure" do
		 sign_in_as(@glsuser, "password")
		get new_category_path
		assert_template 'categories/new'
		assert_no_difference 'Category.count' do
			post categories_path, params: {category: {name: " "}}
		end
		assert_template 'categories/new'
		#assert_select 'panel-title', response.body
		#assert_select 'div.panel-body', response.body
	end

end