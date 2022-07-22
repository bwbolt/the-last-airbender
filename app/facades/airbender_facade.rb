class AirbenderFacade
  def self.create_members(nation)
    parsed_json = AirbenderService.get_members(nation)
    parsed_json.map { |data| Member.new(data) }
  end
end
