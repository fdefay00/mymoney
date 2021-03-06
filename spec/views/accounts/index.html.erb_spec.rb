require 'rails_helper'

RSpec.describe 'accounts/index', type: :view do
  before(:each) do
    assign(:accounts, [
             Account.create!(
               user_id: 1,
               name: 'Name',
               type: 'Type'
             ),
             Account.create!(
               user_id: 1,
               name: 'Name',
               type: 'Type'
             )
           ])
  end

  it 'renders a list of accounts' do
    render
    assert_select 'tr>td', text: 1.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Type'.to_s, count: 2
  end
end
