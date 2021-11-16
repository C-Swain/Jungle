require 'rails_helper'

RSpec.describe User, type: :model do

subject do
  described_class.new(
                      :first_name => 'Nandor',
                      :last_name => 'Relentless',
                      :email => 'Nandy@gmail.com',
                      :password => 'pillage',
                      :password_confirmation => 'pillage',
                      :password_digest => '222'

  )
end

  describe 'Validations' do
  it 'should save when all fields are set'   do
    subject.valid? 
    expect(subject.errors).to be_empty
  end

  it 'should not save when frist_name field is empty' do
  subject.first_name = nil
  subject.valid?
  expect(subject.errors).not_to be_empty
  end

  it 'should not save when last_name field is empty' do
    subject.last_name = nil 
    subject.valid?
    expect(subject.errors).not_to be_empty
  end

  it 'should not save when email field is empty' do
    subject.email = nil 
    subject.valid?
    expect(subject.errors).not_to be_empty
  end 

  it 'should not save when password field is empty' do
    subject.password = nil 
    subject.valid?
    expect(subject.errors).not_to be_empty
  end

  it 'should not save when password_confirmation field is empty' do
    subject.password_confirmation = nil 
    subject.valid?
    expect(subject.errors).not_to be_empty
  end

  it 'should not create a user if the password and the password_confirmation do not match' do
    subject.password_confirmation = 'creepypaper'
    subject.valid?
    expect(subject.errors).not_to be_empty
  end

  it 'shoule not allow a user to register with an email already in the system' do
    User.create(                      
              :first_name => 'Nandy',
              :last_name => 'Relentless',
              :email => 'Nandy@gmail.com',
              :password => 'pillage',
              :password_confirmation => 'pillage',
              :password_digest => '222'
    )   
  subject.valid?
  expect(subject.errors).not_to be_empty  

end
end
end



