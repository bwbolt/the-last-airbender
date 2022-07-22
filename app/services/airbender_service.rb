class AirbenderService
  def self.get_members(nation)
    response = connection.get('/api/v1/characters') do |req|
      req.params['affiliation'] = nation.split('_').map { |word| word.capitalize }.join(' ')
      req.params['perPage'] = 100
    end

    data = JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end
end
