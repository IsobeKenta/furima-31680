FactoryBot.define do
  factory :order_address do
    postel              { "000-0000" }
    prefecture_id       { 1 }
    city                { "矢馬井市魔頭井区" }
    house_number        { "111" }
    building_name       { "結構ヤバイビル" }
    tel                 { 00000000000 }

  end
end
