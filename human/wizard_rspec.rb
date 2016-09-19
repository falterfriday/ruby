require_relative 'wizard'
RSpec.describe Wizard do
    before do
        @wizard = Wizard.new
        @human = Human.new
    end
    it 'has a default health = 50' do
        expect(@wizard.health).to eq(50)
    end
    it 'has a heal method that increases health by 10' do
        @wizard.heal
        expect(@wizard.health).to eq(60)
    end
    it 'has an ancestor chain that includes Human' do
        expect(@wizard.class.ancestors.include?(Human)).to eq(true)
    end
    it 'has fireball that reduces object health' do
        @wizard.fireball(@human)
        expect(@human.health).to eq(80)
    end
end
