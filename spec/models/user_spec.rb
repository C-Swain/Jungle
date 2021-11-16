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
end
end



