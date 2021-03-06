require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe DiscountItemsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # DiscountItem. As you add validations to DiscountItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DiscountItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all discount_items as @discount_items" do
      discount_item = DiscountItem.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:discount_items)).to eq([discount_item])
    end
  end

  describe "GET #show" do
    it "assigns the requested discount_item as @discount_item" do
      discount_item = DiscountItem.create! valid_attributes
      get :show, {:id => discount_item.to_param}, valid_session
      expect(assigns(:discount_item)).to eq(discount_item)
    end
  end

  describe "GET #new" do
    it "assigns a new discount_item as @discount_item" do
      get :new, {}, valid_session
      expect(assigns(:discount_item)).to be_a_new(DiscountItem)
    end
  end

  describe "GET #edit" do
    it "assigns the requested discount_item as @discount_item" do
      discount_item = DiscountItem.create! valid_attributes
      get :edit, {:id => discount_item.to_param}, valid_session
      expect(assigns(:discount_item)).to eq(discount_item)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DiscountItem" do
        expect {
          post :create, {:discount_item => valid_attributes}, valid_session
        }.to change(DiscountItem, :count).by(1)
      end

      it "assigns a newly created discount_item as @discount_item" do
        post :create, {:discount_item => valid_attributes}, valid_session
        expect(assigns(:discount_item)).to be_a(DiscountItem)
        expect(assigns(:discount_item)).to be_persisted
      end

      it "redirects to the created discount_item" do
        post :create, {:discount_item => valid_attributes}, valid_session
        expect(response).to redirect_to(DiscountItem.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved discount_item as @discount_item" do
        post :create, {:discount_item => invalid_attributes}, valid_session
        expect(assigns(:discount_item)).to be_a_new(DiscountItem)
      end

      it "re-renders the 'new' template" do
        post :create, {:discount_item => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested discount_item" do
        discount_item = DiscountItem.create! valid_attributes
        put :update, {:id => discount_item.to_param, :discount_item => new_attributes}, valid_session
        discount_item.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested discount_item as @discount_item" do
        discount_item = DiscountItem.create! valid_attributes
        put :update, {:id => discount_item.to_param, :discount_item => valid_attributes}, valid_session
        expect(assigns(:discount_item)).to eq(discount_item)
      end

      it "redirects to the discount_item" do
        discount_item = DiscountItem.create! valid_attributes
        put :update, {:id => discount_item.to_param, :discount_item => valid_attributes}, valid_session
        expect(response).to redirect_to(discount_item)
      end
    end

    context "with invalid params" do
      it "assigns the discount_item as @discount_item" do
        discount_item = DiscountItem.create! valid_attributes
        put :update, {:id => discount_item.to_param, :discount_item => invalid_attributes}, valid_session
        expect(assigns(:discount_item)).to eq(discount_item)
      end

      it "re-renders the 'edit' template" do
        discount_item = DiscountItem.create! valid_attributes
        put :update, {:id => discount_item.to_param, :discount_item => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested discount_item" do
      discount_item = DiscountItem.create! valid_attributes
      expect {
        delete :destroy, {:id => discount_item.to_param}, valid_session
      }.to change(DiscountItem, :count).by(-1)
    end

    it "redirects to the discount_items list" do
      discount_item = DiscountItem.create! valid_attributes
      delete :destroy, {:id => discount_item.to_param}, valid_session
      expect(response).to redirect_to(discount_items_url)
    end
  end

end
