Factory.define :user do |f|
  f.name "Anne"
  f.sequence(:email) { |n| "example0#{n}@example.com"}
  f.confirmed_at DateTime.now # all users are confirmed by default
  f.password "test123"
end

Factory.define :event do |e|
  e.sequence(:title) { |n| "Event #{n}" }
  e.date DateTime.now 
end

Factory.define :location do |l|
  l.sequence(:name) { |n| "Location #{n}" }
  l.sequence(:address) { |n| "#{n} Street San Francisco, CA 94108" }
end