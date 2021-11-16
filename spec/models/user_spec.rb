require 'rails_helper'

RSpec.describe User, type: :model do

subject do
  described_class.new(
                      :first_name => 'Nandor',
                      :last_name => 'Relentless',
                      :email => 'Nandy@gmail.com',
                      :password => 'pillage',
                      :password_confmation => 'pillage',
                      :password_digest => '222'

  )
end

  describe 'Validations' do
  it 'should save when all fields are set'   do
    subject.valid? 
    expect(subject.errors).to be_empty
  end
end
end



