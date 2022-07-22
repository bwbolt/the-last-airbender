class Member
  attr_reader :name, :photo, :allies, :enemies, :affiliation

  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = set_allies(data)
    @enemies = set_enemies(data)
    @affiliation = data[:affiliation]
  end

  def set_allies(data)
    if data[:allies].empty?
      'None'
    else
      data[:allies]
    end
  end

  def set_enemies(data)
    if data[:enemies].empty?
      'None'
    else
      data[:enemies]
    end
  end
end
