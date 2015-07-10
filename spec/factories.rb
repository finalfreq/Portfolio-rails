FactoryGirl.define do
  factory(:user) do
    name('jake rake')
    email('rake123@mail.com')
    password('password')
    password_confirmation('password')
  end

  factory(:category) do
    name('rails')
    description('Learned how to build rails projects')
  end

  factory(:project) do
    name('rails project')
    description('built project using rails')
    category

  end
end