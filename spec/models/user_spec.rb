require 'rails_helper'

RSpec.describe User, type: :model do

subject do
  described_class.new(
                      :first_name => 'Nandor',
                      :last_name => 'Relentless',
                      :email => 'Nandy@gmail.com',
                      :password => 'pillage',
                      :password_confrimation => 'pillage',
                      :password_digest => '222'

  )
end

  describe 'Validations' do
    


 it "Should confirm the password and password confirmation field match"
  end

 it "Should check to make sure the email is original/ doesn't already exist"

end
 
 
 it "The email is not case sensitive"
end



  describe '.authenticate_with_credentials' do
    # examples for this class method here
  end
end
