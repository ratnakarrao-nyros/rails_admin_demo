require 'spec_helper'

describe Organization do
  
  before(:each) do
   @organization =  FactoryGirl.create(:organization)
  end

  it 'creates a new organization'  do 
    @organization.should be_valid
    @organization.should_not be_nil
  end

  it 'should require name'  do 
    organization = Organization.create(:url => 'www.organization.com')
    organization.should_not be_valid
    organization.errors.full_messages.should include "Name can't be blank"	
  end

  it 'should require url' do 
    organization = Organization.create(:name => 'My organization')
    organization.should_not be_valid
    organization.errors.full_messages.should include "Url can't be blank"
  end
  
  
end 
