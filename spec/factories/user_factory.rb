factory :user do
  name { 'Some Name' }

  trait :admin do
    role { 'admin' }
  end

  trait :client do
    role { 'client' }
  end

  trait :inactive do
    status { 'not_active' }
  end

  trait :active do
    status { 'active' }
  end
end
