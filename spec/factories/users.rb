FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { 'test@test.com' }
    password              { 'testt1' }
    encrypted_password    { password }
    family_name           { '山田' }
    first_name            { '太郎' }
    family_name_kana      { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birthday              { Faker::Date.backward }
  end
end
