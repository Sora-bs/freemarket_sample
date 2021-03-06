FactoryBot.define do

  factory :item do
    name                 { Faker::Pokemon.name }
    price                { Faker::Number.number(4) }
    description          { Faker::Lorem.characters(10) }
    condition            { 'unused' }
    shipping_fee         { 'including_postage' }
    shipping_from        { 'hokkaido' }
    days_before_shipping { 'in_two_days' }
    shipping_method      { 'undecided' }
    status_id            { 1 }
    brand                { 'ルイ ヴィトン' }
    category_id          { 1 }
    user_id              { 1 }
    size_id              { 1 }

    after(:create) do |item|
      create(:image, item_id: item.id)
    end
  end

end
