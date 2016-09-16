require_relative 'apple_tree'
RSpec.describe AppleTree do
    before do
        @tree = AppleTree.new
    end
    it "checks if height attribute is being set" do
        expect(@tree.height).to eq(0)
    end
    it "checks if age attribute is being set" do
        expect(@tree.age).to eq(0)
    end
    it "checks if apples attribute is being set" do
        expect(@tree.apples).to eq(0)
    end
    it "checks the years_gone_by method's changes on height" do
        @tree.years_gone_by
        expect(@tree.height).to eq(2)
    end
    it "checks the years_gone_by method's changes on age" do
        @tree.years_gone_by
        expect(@tree.age).to eq(1)
    end
    it "checks the years_gone_by method's changes on apples" do
        @tree.years_gone_by.years_gone_by.years_gone_by.years_gone_by
        expect(@tree.apples).to eq(100)
    end
    it "checks the years_gone_by method's changes on apples after 10 years" do
        (1..11).map { |years_gone_by| @tree.years_gone_by}
        expect(@tree.apples).to eq(0)
    end
    it "checks the pick_apples method's changes on apples" do
        @tree.years_gone_by.years_gone_by.years_gone_by.years_gone_by
        @tree.pick_apples
        expect(@tree.apples).to eq(0)
    end
end
