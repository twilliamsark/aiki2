FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@example.org" }
    password              "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end

    factory :demo do
      demo true
    end
  end

  factory :rank do
    name "1st"
    description "Ikkyu"
    belt "White"
  end

  factory :format do
    name "Tiado"
  end

  factory :technique do
    name "foo"
    description "bar"
  end

  factory :applied_technique, class: AppliedTechnique do
    name "foo_applied_technique"
    technique
    rank
    format
  end

  factory :video, class: Video do
    youtube_code = "nonsense"
    applied_technique

    factory :visible_video, class: Video do
      visible true
    end

    factory :primary_video, class: Video do
      primary true
    end

    factory :for_demo_video, class: Video do
      for_demo true
    end
  end
end
