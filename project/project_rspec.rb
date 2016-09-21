require_relative 'project'

RSpec.describe Project do 
    it 'has a getter and setter for name attribute' do # what it's testing for
        project = Project.new("Project Name", "I am a project") # creating a new instance
        project.name = "Changed Name" # trying to change that attribute
        expect(project.name).to eq("Changed Name") #did it work? yes == pass, no == fail
    end
end

RSpec.describe Project do
    it 'has a getter and setter for description attribute' do # what it's testing for
        project = Project.new("Project Name", "I am a project description") # creating a new instance
        project.description = "Changed Description" # trying to change that attribute
        expect(project.description).to eq("Changed Description") #did it work? yes == pass, no == fail
    end
end

RSpec.describe Project do
    it 'has a method elevator_pitch to explain name and description' do
        project1 = Project.new('Project 1', 'description 1')
        project2 = Project.new('Project 2', 'description 2')
        expect(project1.elevator_pitch).to eq("Project 1, description 1")
        expect(project2.elevator_pitch).to eq("Project 2, description 2")
    end
end

RSpec.describe Project do
    it 'has a getter and setter for add_to_team method' do
        project1 = Project.new("Project Name", "I am a project description").add_to_team("Brian")
        expect(project1.team_members).to eq("Brian")
        project1.team_members = ""
        expect(project1.team_members).to eq("")
    end
end
