FactoryBot.define do
  factory :room_user do
    association :user
    association :room
  end
end

# アソシエーション情報を突っ込む