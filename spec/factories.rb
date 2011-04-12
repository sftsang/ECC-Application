# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                       "Sherman Tsang"
  user.email                      "sherman@e19.ca"
  user.phone                      "780-709-1280"
  user.postal_code                "T6L 3Z3"
  user.community_league_member    true
  user.newsletter_signup          true
  user.community_id               1
  user.role_id                    1
  user.password                   "foobar"
  user.password_confirmation      "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end