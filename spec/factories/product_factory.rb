FactoryBot.define do
  sequence(:name) { |n| "Product#{n}" }
  sequence(:description) { |n| "Description#{n}" }
  sequence(:image_url) { |n| "product#{n}.jpg" }
  sequence(:price) { rand(1.0..100.0)}


  factory :product do
    name
    description
    image_url
    price
  end

end
