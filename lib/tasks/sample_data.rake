require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_users
  end
end

def make_users
  admin = User.create!(:name => "Example User", 
                       :email => "sherman@e19.ca",
                       :phone => "780-709-1280",
                       :postal_code => "T6L 3Z3", 
                       :community_id => 1,
                       :role_id => 1,
                       :community_league_member => true,
                       :newsletter_signup => true,
                       :password => "foobar",
                       :password_confirmation => "foobar")
  #admin.toggle!(:admin)
  Community.where(:status => "Active")
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@e19.ca"
    password  = "password"
    community = Community.offset(rand(Community.count)).first.id
    community_league_member = rand.round.to_i
    newsletter_signup = rand.round.to_i
    User.create!(:name => name,
                 :email => email,
                 :phone => "780-709-1280",
                 :postal_code => "T6L 3Z3", 
                 :community_id => community,
                 :role_id => 3,
                 :community_league_member => community_league_member,
                 :newsletter_signup => newsletter_signup,
                 :password => password,
                 :password_confirmation => password)
  end
end