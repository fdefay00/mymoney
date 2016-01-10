require 'rails_helper'

RSpec.describe 'income_sources/new', type: :view do
  before(:each) do
    assign(:income_source, IncomeSource.new(
                             name: 'MyString',
                             pay_schedule: 'MyString',
                             pay_day: 'MyString',
                             amount: 1.5
    ))
  end

  it 'renders new income_source form' do
    render

    assert_select 'form[action=?][method=?]', income_sources_path, 'post' do
      assert_select 'input#income_source_name[name=?]', 'income_source[name]'

      assert_select 'input#income_source_pay_schedule[name=?]', 'income_source[pay_schedule]'

      assert_select 'input#income_source_pay_day[name=?]', 'income_source[pay_day]'

      assert_select 'input#income_source_amount[name=?]', 'income_source[amount]'
    end
  end
end
