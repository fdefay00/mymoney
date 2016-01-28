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

RSpec.describe DebtBalancesController, type: :controller do
  let(:valid_attributes) do
    build(:debt_balance).attributes
  end

  let(:invalid_attributes) do
    build(:debt_balance, debt: nil).attributes
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all debt_balances as @debt_balances' do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
      get :index, {}, valid_session
      expect(assigns(:debt_balances)).to eq([debt_balance])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested debt_balance as @debt_balance' do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
      get :show, { id: debt_balance.to_param }, valid_session
      expect(assigns(:debt_balance)).to eq(debt_balance)
    end
  end

  describe 'GET #new' do
    it 'assigns a new debt_balance as @debt_balance' do
      login_user
      get :new, {}, valid_session
      expect(assigns(:debt_balance)).to be_a_new(DebtBalance)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested debt_balance as @debt_balance' do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
      get :edit, { id: debt_balance.to_param }, valid_session
      expect(assigns(:debt_balance)).to eq(debt_balance)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      before(:each) { login_user }
      it 'creates a new DebtBalance' do
        expect do
          post :create, { debt_balance: valid_attributes }, valid_session
        end.to change(DebtBalance, :count).by(1)
      end

      it 'assigns a newly created debt_balance as @debt_balance' do
        post :create, { debt_balance: valid_attributes }, valid_session
        expect(assigns(:debt_balance)).to be_a(DebtBalance)
        expect(assigns(:debt_balance)).to be_persisted
      end

      it 'redirects to the created debt_balance' do
        post :create, { debt_balance: valid_attributes }, valid_session
        expect(response).to redirect_to(DebtBalance.last)
      end
    end

    context 'with invalid params' do
      before(:each) { login_user }
      it 'assigns a newly created but unsaved debt_balance as @debt_balance' do
        post :create, { debt_balance: invalid_attributes }, valid_session
        expect(assigns(:debt_balance)).to be_a_new(DebtBalance)
      end

      it "re-renders the 'new' template" do
        post :create, { debt_balance: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        build(:debt_balance, balance: '2000').attributes
      end

      it 'updates the requested debt_balance' do
        debt_balance = DebtBalance.create! valid_attributes
        login(debt_balance.owner)
        put :update, { id: debt_balance.to_param, debt_balance: new_attributes }, valid_session
        debt_balance.reload
        expect(debt_balance.balance).to eq('2000'.to_d)
      end

      it 'assigns the requested debt_balance as @debt_balance' do
        debt_balance = DebtBalance.create! valid_attributes
        login(debt_balance.owner)
        put :update, { id: debt_balance.to_param, debt_balance: valid_attributes }, valid_session
        expect(assigns(:debt_balance)).to eq(debt_balance)
      end

      it 'redirects to the debt_balance' do
        debt_balance = DebtBalance.create! valid_attributes
        login(debt_balance.owner)
        put :update, { id: debt_balance.to_param, debt_balance: valid_attributes }, valid_session
        expect(response).to redirect_to(debt_balance)
      end
    end

    context 'with invalid params' do
      it 'assigns the debt_balance as @debt_balance' do
        debt_balance = DebtBalance.create! valid_attributes
        login(debt_balance.owner)
        put :update, { id: debt_balance.to_param, debt_balance: invalid_attributes }, valid_session
        expect(assigns(:debt_balance)).to eq(debt_balance)
      end

      it "re-renders the 'edit' template" do
        debt_balance = DebtBalance.create! valid_attributes
        login(debt_balance.owner)
        put :update, { id: debt_balance.to_param, debt_balance: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested debt_balance' do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
      expect do
        delete :destroy, { id: debt_balance.to_param }, valid_session
      end.to change(DebtBalance, :count).by(-1)
    end

    it 'redirects to the debt_balances list' do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
      delete :destroy, { id: debt_balance.to_param }, valid_session
      expect(response).to redirect_to(debt_balances_url)
    end
  end

  describe 'GET #graphs' do
    before(:each) do
      debt_balance = DebtBalance.create! valid_attributes
      login(debt_balance.owner)
    end

    it 'renders a json for ccs_by_month' do
      get :ccs_by_month, {}, valid_session
      expect(response.header['Content-Type']).to match(/json/)
    end

    it 'renders a json for loans_by_month' do
      get :loans_by_month, {}, valid_session
      expect(response.header['Content-Type']).to match(/json/)
    end
  end
end
