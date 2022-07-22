require 'rails_helper'

RSpec.describe 'AirbenderFacade' do
  it 'makes services calls and returns an array of member objects' do
    members = AirbenderFacade.create_members('fire_nation')

    expect(members).to be_a(Array)
    expect(members).to be_all(Member)
  end

  it 'returns an array if not applicable' do
    members = AirbenderFacade.create_members('cow')

    expect(members).to be_a(Array)
    expect(members).to eq([])
  end
end
