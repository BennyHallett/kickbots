class InitMessage
  def initialize(team_name)
    raise 'Cannot create an init message without a team name' unless team_name
  end
end
