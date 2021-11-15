require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) {
    Category.new(name: "testCat")
  }
  subject {
    category.products.new(
      name: "test",
      description: "great for writing tests",
      image: "this is a picture",
      price: 9001,
      quantity: 20,
    )
}

  describe "Validations" do
  
  it 'should save product successfully if it has a name, price, quanity and category' do
  expect(subject).to be_valid
  expect(subject.errors.full_messages).to be_empty

end
end
end
