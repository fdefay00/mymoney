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

RSpec.describe IncomeSourcesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # IncomeSource. As you add validations to IncomeSource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # IncomeSourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all income_sources as @income_sources' do
      income_source = IncomeSource.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:income_sources)).to eq([income_source])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested income_source as @income_source' do
      income_source = IncomeSource.create! valid_attributes
      get :show, { id: income_source.to_param }, valid_session
      expect(assigns(:income_source)).to eq(income_source)
    end
  end

  describe 'GET #new' do
    it 'assigns a new income_source as @income_source' do
      get :new, {}, valid_session
      skip # expect(assigns(:income_source)).to be_a_new(IncomeSource)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested income_source as @income_source' do
      income_source = IncomeSource.create! valid_attributes
      get :edit, { id: income_source.to_param }, valid_session
      expect(assigns(:income_source)).to eq(income_source)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new IncomeSource' do
        expect do
          post :create, { income_source: valid_attributes }, valid_session
        end.to change(IncomeSource, :count).by(1)
      end

      it 'assigns a newly created income_source as @income_source' do
        post :create, { income_source: valid_attributes }, valid_session
        expect(assigns(:income_source)).to be_a(IncomeSource)
        expect(assigns(:income_source)).to be_persisted
      end

      it 'redirects to the created income_source' do
        post :create, { income_source: valid_attributes }, valid_session
        expect(response).to redirect_to(IncomeSource.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved income_source as @income_source' do
        post :create, { income_source: invalid_attributes }, valid_session
        expect(assigns(:income_source)).to be_a_new(IncomeSource)
      end

      it "re-renders the 'new' template" do
        post :create, { income_source: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested income_source' do
        income_source = IncomeSource.create! valid_attributes
        put :update, { id: income_source.to_param, income_source: new_attributes }, valid_session
        income_source.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested income_source as @income_source' do
        income_source = IncomeSource.create! valid_attributes
        put :update, { id: income_source.to_param, income_source: valid_attributes }, valid_session
        expect(assigns(:income_source)).to eq(income_source)
      end

      it 'redirects to the income_source' do
        income_source = IncomeSource.create! valid_attributes
        put :update, { id: income_source.to_param, income_source: valid_attributes }, valid_session
        expect(response).to redirect_to(income_source)
      end
    end

    context 'with invalid params' do
      it 'assigns the income_source as @income_source' do
        income_source = IncomeSource.create! valid_attributes
        put :update, { id: income_source.to_param, income_source: invalid_attributes }, valid_session
        expect(assigns(:income_source)).to eq(income_source)
      end

      it "re-renders the 'edit' template" do
        income_source = IncomeSource.create! valid_attributes
        put :update, { id: income_source.to_param, income_source: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested income_source' do
      income_source = IncomeSource.create! valid_attributes
      expect do
        delete :destroy, { id: income_source.to_param }, valid_session
      end.to change(IncomeSource, :count).by(-1)
    end

    it 'redirects to the income_sources list' do
      income_source = IncomeSource.create! valid_attributes
      delete :destroy, { id: income_source.to_param }, valid_session
      expect(response).to redirect_to(income_sources_url)
    end
  end
end
