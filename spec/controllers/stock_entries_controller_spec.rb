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

describe StockEntriesController do

  # This should return the minimal set of attributes required to create a valid
  # StockEntry. As you add validations to StockEntry, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StockEntriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all stock_entries as @stock_entries" do
      stock_entry = StockEntry.create! valid_attributes
      get :index, {}, valid_session
      assigns(:stock_entries).should eq([stock_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested stock_entry as @stock_entry" do
      stock_entry = StockEntry.create! valid_attributes
      get :show, {:id => stock_entry.to_param}, valid_session
      assigns(:stock_entry).should eq(stock_entry)
    end
  end

  describe "GET new" do
    it "assigns a new stock_entry as @stock_entry" do
      get :new, {}, valid_session
      assigns(:stock_entry).should be_a_new(StockEntry)
    end
  end

  describe "GET edit" do
    it "assigns the requested stock_entry as @stock_entry" do
      stock_entry = StockEntry.create! valid_attributes
      get :edit, {:id => stock_entry.to_param}, valid_session
      assigns(:stock_entry).should eq(stock_entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new StockEntry" do
        expect {
          post :create, {:stock_entry => valid_attributes}, valid_session
        }.to change(StockEntry, :count).by(1)
      end

      it "assigns a newly created stock_entry as @stock_entry" do
        post :create, {:stock_entry => valid_attributes}, valid_session
        assigns(:stock_entry).should be_a(StockEntry)
        assigns(:stock_entry).should be_persisted
      end

      it "redirects to the created stock_entry" do
        post :create, {:stock_entry => valid_attributes}, valid_session
        response.should redirect_to(StockEntry.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved stock_entry as @stock_entry" do
        # Trigger the behavior that occurs when invalid params are submitted
        StockEntry.any_instance.stub(:save).and_return(false)
        post :create, {:stock_entry => {}}, valid_session
        assigns(:stock_entry).should be_a_new(StockEntry)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        StockEntry.any_instance.stub(:save).and_return(false)
        post :create, {:stock_entry => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested stock_entry" do
        stock_entry = StockEntry.create! valid_attributes
        # Assuming there are no other stock_entries in the database, this
        # specifies that the StockEntry created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        StockEntry.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => stock_entry.to_param, :stock_entry => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested stock_entry as @stock_entry" do
        stock_entry = StockEntry.create! valid_attributes
        put :update, {:id => stock_entry.to_param, :stock_entry => valid_attributes}, valid_session
        assigns(:stock_entry).should eq(stock_entry)
      end

      it "redirects to the stock_entry" do
        stock_entry = StockEntry.create! valid_attributes
        put :update, {:id => stock_entry.to_param, :stock_entry => valid_attributes}, valid_session
        response.should redirect_to(stock_entry)
      end
    end

    describe "with invalid params" do
      it "assigns the stock_entry as @stock_entry" do
        stock_entry = StockEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StockEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => stock_entry.to_param, :stock_entry => {}}, valid_session
        assigns(:stock_entry).should eq(stock_entry)
      end

      it "re-renders the 'edit' template" do
        stock_entry = StockEntry.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        StockEntry.any_instance.stub(:save).and_return(false)
        put :update, {:id => stock_entry.to_param, :stock_entry => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested stock_entry" do
      stock_entry = StockEntry.create! valid_attributes
      expect {
        delete :destroy, {:id => stock_entry.to_param}, valid_session
      }.to change(StockEntry, :count).by(-1)
    end

    it "redirects to the stock_entries list" do
      stock_entry = StockEntry.create! valid_attributes
      delete :destroy, {:id => stock_entry.to_param}, valid_session
      response.should redirect_to(stock_entries_url)
    end
  end

end
