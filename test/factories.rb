Factory.define :user do |u|
  u.username { Faker::Internet.user_name }
  u.email    { Faker::Internet.email }
  u.password "welcome"
  u.display_name { Faker::Name.name }
end

Factory.define :event do |e|
  e.title       { Faker::Lorem.sentence }
  e.description { Faker::Lorem.paragraph }
  e.start       { DateTime::current }
  e.end         { DateTime::current + 1.day }
  e.location    { Faker::Address.street_name }
end

Factory.define :event_guest do |g|
  g.rsvp "PENDING"
end