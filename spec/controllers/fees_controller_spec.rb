require 'spec_helper'

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

describe FeesController do

  # This should return the minimal set of attributes required to create a valid
  # Fee. As you add validations to Fee, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "adm_fee" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FeesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fees as @fees" do
      fee = Fee.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fees).should eq([fee])
    end
  end

  describe "GET show" do
    it "assigns the requested fee as @fee" do
      fee = Fee.create! valid_attributes
      get :show, {:id => fee.to_param}, valid_session
      assigns(:fee).should eq(fee)
    end
  end

  describe "GET new" do
    it "assigns a new fee as @fee" do
      get :new, {}, valid_session
      assigns(:fee).should be_a_new(Fee)
    end
  end

  describe "GET edit" do
    it "assigns the requested fee as @fee" do
      fee = Fee.create! valid_attributes
      get :edit, {:id => fee.to_param}, valid_session
      assigns(:fee).should eq(fee)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fee" do
        expect {
          post :create, {:fee => valid_attributes}, valid_session
        }.to change(Fee, :count).by(1)
      end

      it "assigns a newly created fee as @fee" do
        post :create, {:fee => valid_attributes}, valid_session
        assigns(:fee).should be_a(Fee)
        assigns(:fee).should be_persisted
      end

      it "redirects to the created fee" do
        post :create, {:fee => valid_attributes}, valid_session
        response.should redirect_to(Fee.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fee as @fee" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fee.any_instance.stub(:save).and_return(false)
        post :create, {:fee => { "adm_fee" => "invalid value" }}, valid_session
        assigns(:fee).should be_a_new(Fee)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fee.any_instance.stub(:save).and_return(false)
        post :create, {:fee => { "adm_fee" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fee" do
        fee = Fee.create! valid_attributes
        # Assuming there are no other fees in the database, this
        # specifies that the Fee created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fee.any_instance.should_receive(:update).with({ "adm_fee" => "1" })
        put :update, {:id => fee.to_param, :fee => { "adm_fee" => "1" }}, valid_session
      end

      it "assigns the requested fee as @fee" do
        fee = Fee.create! valid_attributes
        put :update, {:id => fee.to_param, :fee => valid_attributes}, valid_session
        assigns(:fee).should eq(fee)
      end

      it "redirects to the fee" do
        fee = Fee.create! valid_attributes
        put :update, {:id => fee.to_param, :fee => valid_attributes}, valid_session
        response.should redirect_to(fee)
      end
    end

    describe "with invalid params" do
      it "assigns the fee as @fee" do
        fee = Fee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fee.any_instance.stub(:save).and_return(false)
        put :update, {:id => fee.to_param, :fee => { "adm_fee" => "invalid value" }}, valid_session
        assigns(:fee).should eq(fee)
      end

      it "re-renders the 'edit' template" do
        fee = Fee.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fee.any_instance.stub(:save).and_return(false)
        put :update, {:id => fee.to_param, :fee => { "adm_fee" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fee" do
      fee = Fee.create! valid_attributes
      expect {
        delete :destroy, {:id => fee.to_param}, valid_session
      }.to change(Fee, :count).by(-1)
    end

    it "redirects to the fees list" do
      fee = Fee.create! valid_attributes
      delete :destroy, {:id => fee.to_param}, valid_session
      response.should redirect_to(fees_url)
    end
  end

end
