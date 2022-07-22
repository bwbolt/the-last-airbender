require 'rails_helper'

RSpec.describe '#index' do
  it 'displays nation details after selection' do
    visit root_path
    select 'Fire Nation', from: 'nation'
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)

    expect(page).to have_content('Total Number of Residents: 97')

    expect(page).to have_content('Allies:', count: 25)
    expect(page).to have_content('Enemies:', count: 25)
    expect(page).to have_content('Affiliations:', count: 25)
  end
end
