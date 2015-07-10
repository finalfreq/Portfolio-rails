FactoryGirl.define do
  factory :user  do
    name 'jake rake'
    email 'rake123@mail.com'
    password 'password'
    password_confirmation 'password'

    factory :user_as_admin do
      admin true
    end
  end

  factory :category  do
    name 'rails'
    description 'Learned how to build rails projects'
  end

  factory :project  do
    name 'rails project'
    description 'built project using rails'
    link 'www.github.com/finalfreq'
  end

  factory :post  do
    name 'rails project'
    body 'built project using rails'
  end
  factory :comment  do
    body 'built project using rails'
  end
end
