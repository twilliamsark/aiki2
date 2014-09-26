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
    name Format::TIADO
    short_description "hand"
    position 1
  end

  factory :technique do
    name "foo"
    description "bar"
  end

  factory :waza, class: Waza do
    name "foo_waza"
    technique
  end

  factory :waza_format, class: WazaFormat do
    waza
    format
    rank
  end

  factory :video, class: Video do
    youtube_code = "nonsense"
  end
end
