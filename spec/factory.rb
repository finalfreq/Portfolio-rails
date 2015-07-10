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






FactoryGirl.define do
  factory(:user) do
    name('betty')
    email('betty@gmail.com')
    password('badpass123')
    password_confirmation('badpass123')
  end

  factory(:question) do
    name('what is foo?')
    body('where the hell does foo bar come from?')
    user
  end

  factory(:answer) do
    body('I pity the foo')
  end
end
