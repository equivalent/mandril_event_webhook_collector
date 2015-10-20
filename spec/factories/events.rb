FactoryGirl.define do
  factory :event do
    raw ExampleFiles.json_example('valid_mandril_event')
  end
end
