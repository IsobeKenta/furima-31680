FactoryBot.define do
  factory :item do
    
    product             { 'test' }
    explanation         { 'test' }
    type_id             { 1 }
    status_id_id        { 1 }
    price               { 300}
    delivaly_price_id   { 1 }
    prefecture_id       { 1 }
    ship_id             { 1 }
    association :user
    
    after(:build) do |pic|
      pic.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
