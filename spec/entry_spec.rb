require_relative '../models/entry.rb'

RSpec.describe Entry do
  let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }
  context "attributes" do

      it "should respond to name" do
      it "reports its name" do
       expect(entry.name).to eq('Ada Lovelace')
     end
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry).to respond_to(:name)
    end
    it "should respond to phone number" do
      it "reports its phone_number" do
       expect(entry.phone_number).to eq('010.012.1815')
     end
      expect(entry).to respond_to(:phone_number)
    end
    it "should respond to email" do
      it "reports its email" do
       expect(entry.email).to eq('augusta.king@lovelace.com')
     end
      expect(entry).to respond_to(:email)
    end
  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end
end
