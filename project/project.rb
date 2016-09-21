class Project
  attr_accessor :name, :description, :team_members
  def initialize(name, description)
    @name = name
    @description = description
    @team_members = ""
    self
  end
  def add_to_team(team_member)
    @team_members += team_member
    self
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end
end

# project1 = Project.new("Project1","Description 1").add_to_team("Phil")
# puts project1.team_members
# puts project1.elevator_pitch
