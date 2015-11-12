require './transactions'

RSpec.configure do |config| 
	config.color = true
end

describe Transaction do 
	let(:transaction){Transaction.new}
	let(:credit_account){ 12345 }
	let(:number){23456}
	let(:debit_account){ 67890 }
	let(:amount){1000}
	let(:time){Time.now}

	
	context "when credit account" do
		it "checks input account number is integer" do
	       expect(number.class).to eq(credit_account.class)   
	  	end
	end

	context "when debit account" do
		it "checks input account number is integer" do
	       expect(number.class).to eq(debit_account.class)   
	  	end
	end

	it "checks input amount is integer" do
	    expect(amount.class).to eq(Fixnum)   
	end

	it "checks valid time" do
		expect(time.class).to eq(Time)
	end

	it "checks currency-like conversion" do
		expect(amount.to_s.insert(-3, ".").class).to eq(String)
	end

	it "makes time pretty" do
		expect(time.strftime("%A, %d %b %Y %l:%M %p")).to be_truthy
	end

end