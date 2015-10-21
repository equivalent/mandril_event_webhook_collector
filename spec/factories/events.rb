FactoryGirl.define do
  factory :event do

    trait :processed do
      processed_at Time.now.midday
    end
  end
end
