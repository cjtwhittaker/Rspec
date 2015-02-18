require 'spec_helper'

describe 'family_member' do 
  describe 'The family_member class inherits from the Person class' do

    it "it should be a child of the person class" do
      person = family_member.new "joe", "bloggs", "1 Jan 1990"
      expect(person.class).to eq(Person)
    end