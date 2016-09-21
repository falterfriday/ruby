require_relative 'solar_system'
RSpec.describe Planet do
    before do
        @planet = Planet.new("Mercury", "Hot Hot Hot!!", 0)
    end
    it "initializes an object, setting the paramenters correctly" do
        expect(@planet.name).to eq("Mercury")
        expect(@planet.description).to eq("Hot Hot Hot!!")
        expect(@planet.population).to eq(0)
    end
end
RSpec.describe SolarSystem do
    before do
        @sol = SolarSystem.new()
    end
    it "checks if SolarSystem is working" do
        expect(@sol.name).to eq("Milky Way")
        expect(@sol.planets).to eq(["Mercury"])
        expect(@sol.number_of_planets).to eq(1)
        @sol.super_nova
        expect(@sol.number_of_planets).to eq(0)
        expect(@sol.planets).to eq([])
    end
end
