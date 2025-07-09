FactoryBot.define do
  factory :system_requirement do
    sequence(:name) { |n| "Requirement #{n}" }
    operational_system { "Windows 10" }
    storage { "50 GB" }
    processor { "Intel i5" }
    memory { "8 GB" }
    video_board { "NVIDIA GTX 1050" }
  end
end
