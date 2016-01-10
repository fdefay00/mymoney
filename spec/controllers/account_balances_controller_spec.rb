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

RSpec.describe AccountBalancesController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # AccountBalance. As you add validations to AccountBalance, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AccountBalancesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all account_balances as @account_balances' do
      account_balance = AccountBalance.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:account_balances)).to eq([account_balance])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested account_balance as @account_balance' do
      account_balance = AccountBalance.create! valid_attributes
      get :show, { id: account_balance.to_param }, valid_session
      expect(assigns(:account_balance)).to eq(account_balance)
    end
  end

  describe 'GET #new' do
    it 'assigns a new account_balance as @account_balance' do
      get :new, {}, valid_session
      expect(assigns(:account_balance)).to be_a_new(AccountBalance)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested account_balance as @account_balance' do
      account_balance = AccountBalance.create! valid_attributes
      get :edit, { id: account_balance.to_param }, valid_session
      expect(assigns(:account_balance)).to eq(account_balance)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new AccountBalance' do
        expect do
          post :create, { account_balance: valid_attributes }, valid_session
        end.to change(AccountBalance, :count).by(1)
      end

      it 'assigns a newly created account_balance as @account_balance' do
        post :create, { account_balance: valid_attributes }, valid_session
        expect(assigns(:account_balance)).to be_a(AccountBalance)
        expect(assigns(:account_balance)).to be_persisted
      end

      it 'redirects to the created account_balance' do
        post :create, { account_balance: valid_attributes }, valid_session
        expect(response).to redirect_to(AccountBalance.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved account_balance as @account_balance' do
        post :create, { account_balance: invalid_attributes }, valid_session
        expect(assigns(:account_balance)).to be_a_new(AccountBalance)
      end

      it "re-renders the 'new' template" do
        post :create, { account_balance: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested account_balance' do
        account_balance = AccountBalance.create! valid_attributes
        put :update, { id: account_balance.to_param, account_balance: new_attributes }, valid_session
        account_balance.reload
        skip('Add assertions for updated state')
      end

      it 'assigns the requested account_balance as @account_balance' do
        account_balance = AccountBalance.create! valid_attributes
        put :update, { id: account_balance.to_param, account_balance: valid_attributes }, valid_session
        expect(assigns(:account_balance)).to eq(account_balance)
      end

      it 'redirects to the account_balance' do
        account_balance = AccountBalance.create! valid_attributes
        put :update, { id: account_balance.to_param, account_balance: valid_attributes }, valid_session
        expect(response).to redirect_to(account_balance)
      end
    end

    context 'with invalid params' do
      it 'assigns the account_balance as @account_balance' do
        account_balance = AccountBalance.create! valid_attributes
        put :update, { id: account_balance.to_param, account_balance: invalid_attributes }, valid_session
        expect(assigns(:account_balance)).to eq(account_balance)
      end

      it "re-renders the 'edit' template" do
        account_balance = AccountBalance.create! valid_attributes
        put :update, { id: account_balance.to_param, account_balance: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested account_balance' do
      account_balance = AccountBalance.create! valid_attributes
      expect do
        delete :destroy, { id: account_balance.to_param }, valid_session
      end.to change(AccountBalance, :count).by(-1)
    end

    it 'redirects to the account_balances list' do
      account_balance = AccountBalance.create! valid_attributes
      delete :destroy, { id: account_balance.to_param }, valid_session
      expect(response).to redirect_to(account_balances_url)
    end
  end
end
