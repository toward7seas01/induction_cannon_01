Factory.define :user do |f|
  f.name { Faker::Name.name }
  f.info { Faker::Lorem.paragraph }

end
