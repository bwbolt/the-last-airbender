class AirbenderService
  def self.get_members(nation)
    response = connection.get('/api/v1/characters') do |req|
      req.params['affiliation'] = nation
    end
  end

  def self.connection
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end
end
