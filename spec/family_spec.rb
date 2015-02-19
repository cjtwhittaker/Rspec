require 'spec_helper'

describe 'family_member' do 
  describe 'The family_member class inherits from the Person class' do

    it "it should be a child of the person class" do
      person = FamilyMember.new "joe", "bloggs", "1 Jan 1990"
      expect(person.class).to be(family_member)
    end

    it "should be able to take on board a relationship" do
      person = FamilyMember.new "joe", "bloggs", "1 Jan 1990"
      person.relationship = 'cousin'
      expect(person.relationship).to eq('cousin')

    end


  end
end
