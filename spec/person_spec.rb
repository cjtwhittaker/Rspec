require 'spec_helper'

describe 'Person' do

  describe "The person class in the address book" do
  
    it "should store and return personal information" do      
     person = Person.new "joe", "bloggs", "1 Jan 1990"
		  # Expected outcomes
			expect(person.dob).to be_a(Date)
			expect(person.dob.to_s).to eq('1990-01-01')
			expect(person.first_name).to eq('Joe')
			expect(person.surname).to eq('Bloggs')
			expect(person.fullname).to eq('Joe Bloggs')
		end 
  
    it "should have a blank array for a new person eamil addresses" do
        person = Person.new "joe", "bloggs", "1 Jan 1990"
        expect(person.emails).to eq([])
    end

    it "should add an email address" do
      person = Person.new "joe", "bloggs", "1 Jan 1990"
      person.add_email "joe@foo.com"
      person.add_email "joe.bloggs@work.com"
      # Expected outcomes
      expect(person.emails).to eq(["joe@foo.com", "joe.bloggs@work.com"])
    end

    it "should have a blank array for a new person phone numbers" do
      person = Person.new "joe", "bloggs", "1 Jan 1990"
      expect(person.phone_numbers).to eq([])
    end

    it "should display the phone numbers when entered" do
      person = Person.new "joe", "bloggs", "1 Jan 1990"
      person.add_phone "07712345678"
      person.add_phone "02012345678"
      expect(person.phone_numbers).to eq(["07712345678", "02012345678"])
    end

    it "should be able to remove an email address" do
      person = Person.new "joe", "bloggs", "1 Jan 1990"
      person.add_email "joe@foo.com"
      person.add_email "joe.bloggs@work.com"
      person.remove_email(0)
      expect(person.emails).to eq(["joe@foo.com"])
      end
  end
end


