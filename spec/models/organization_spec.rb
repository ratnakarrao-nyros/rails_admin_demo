require 'spec_helper'

describe Organization do
  
  before(:each) do
   @organization =  FactoryGirl.create(:organization)
  end

  it 'creates a new organizaiton'  do 
    @organization.should be_valid
    @organization.should_not be_nil
  end

  it 'should require name'  do 
    organizaiton = Organization.create(:url => 'www.organization.com')
    organizaiton.should_not be_valid
    organizaiton.errors.full_messages.should include "Name can't be blank"	
  end

  it 'should require url' do 
    organizaiton = Organization.create(:name => 'My organization')
    organizaiton.should_not be_valid
    organizaiton.errors.full_messages.should include "Url can't be blank"
  end
  
  
end 
