require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
<<<<<<< HEAD
    @update = {
      :title => 'Lorem Ipsum',
      :description => 'Wibbles are fun!',
      :image_url => 'lorem.jpg',
      :price => 19.95
    }
=======
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
<<<<<<< HEAD
      post :create, :product => @update
=======
      post :create, :product => @product.attributes
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, :id => @product.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product.to_param
    assert_response :success
  end

  test "should update product" do
<<<<<<< HEAD
    put :update, :id => @product.to_param, :product => @update
=======
    put :update, :id => @product.to_param, :product => @product.attributes
>>>>>>> 826f5d5cba463d2480cb29af606c91f316815b16
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, :id => @product.to_param
    end

    assert_redirected_to products_path
  end
end
