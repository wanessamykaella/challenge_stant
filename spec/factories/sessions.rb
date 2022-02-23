FactoryBot.define do
  factory :session do
    shift { 1 }
    start_time { "2022-02-22 20:16:17" }
    finish_time { "2022-02-22 20:16:17" }
    track { nil }
  end
end
