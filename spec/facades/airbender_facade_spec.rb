require 'rails_helper'

RSpec.describe 'AirbenderFacade' do
  it 'makes services calls and returns an array of member objects' do
    members = AirbenderFacade.create_members('fire_nation')

    expect(members).to be_a(Array)
    expect(members).to be_all(Member)
  end
end
