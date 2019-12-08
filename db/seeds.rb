Faker::Config.locale = :ja
100.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(email: email,
               password:              password,
               password_confirmation: password)
end


users = User.order(:created_at).take(6)
100.times do
  title  = Faker::Lorem.sentence(word_count: 3)
  details = Faker::Lorem.sentence(word_count: 10)
  place = Faker::Address.full_address
  start_time = Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long)
  users.each{ |user| user.events.create!(title: title,
                details: details,
                place: place,
                start_time: start_time)}
end
