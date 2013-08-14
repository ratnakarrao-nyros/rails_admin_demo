require 'spec_helper'

describe User do
  
  it 'creates a new organizaiton'  do 
    user =  FactoryGirl.create(:user)
    user.should be_valid
    user.should_not be_nil
  end

  it 'should require email'  do 
    user = User.create(:password => 'secret123', :password_confirmation => 'secret123')
    user.should_not be_valid
    user.errors.full_messages.should include "Email can't be blank"	
  end

  it 'should require password' do 
    user = User.create(:email => 'example@example.com' )
    user.should_not be_valid
    user.errors.full_messages.should include "Password can't be blank"
  end
  
  it 'should indicate length of password' do  
    user = User.create(:email => 'example@example.com' ,:password => 'secret', :password_confirmation => 'secret')
    user.errors.full_messages.should include "Password is too short (minimum is 8 characters)"
  end

  it 'should indicate password mismatch'  do 
    user = User.create(:email => 'example@example.com' ,:password => 'secret123', :password_confirmation => 'secret321')
    user.errors.full_messages.should include "Password doesn't match confirmation"
  end
  
end 
