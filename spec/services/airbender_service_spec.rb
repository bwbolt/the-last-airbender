require 'rails_helper'

RSpec.describe 'AirbenderService' do
  it 'retrieves data and parses response for a group of members' do
    parsed_json = AirbenderService.get_members('fire_nation')

    expect(parsed_json).to be_a Array

    member = parsed_json.first

    expect(member).to include :name, :allies, :enemies, :affiliation
    expect(member[:name]).to be_a String
    expect(member[:affiliation]).to be_a String
    expect(member[:allies]).to be_a Array
    expect(member[:enemies]).to be_a Array
  end
end
