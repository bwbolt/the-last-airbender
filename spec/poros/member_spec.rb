require 'rails_helper'

RSpec.describe Member do
  it 'populates Member fields from JSON response' do
    data = {
      "_id": '5cf5679a915ecad153ab68fd',
      "allies": [
        'Ozai'
      ],
      "enemies": [
        'Earth Kingdom'
      ],
      "photoUrl": 'https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819',
      "name": 'Chan (Fire Nation admiral)',
      "affiliation": 'Fire Nation Navy'
    }

    member = Member.new(data)

    expect(member.name).to eq('Chan (Fire Nation admiral)')
    expect(member.allies).to eq(['Ozai'])
    expect(member.enemies).to eq(['Earth Kingdom'])
    expect(member.affiliation).to eq('Fire Nation Navy')
    expect(member.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819')
  end

  it 'ignores fields not specified' do
    data = {
      "_id": '5cf5679a915ecad153ab68fd',
      "allies": [
        'Ozai'
      ],
      "enemies": [
        'Earth Kingdom'
      ],
      "cow": 'yes',
      "photoUrl": 'https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819',
      "name": 'Chan (Fire Nation admiral)',
      "affiliation": 'Fire Nation Navy'
    }

    member = Member.new(data)

    expect(member).to_not respond_to(:cow)
  end
end
