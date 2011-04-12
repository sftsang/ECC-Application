# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
admin_user = User.create([{ :name => 'Admin', :email => 'sherman@e19.ca', :phone => '780-790-1280', :postal_code => 'T6L 3Z3', :role_id => '1', :community_id => '1' }])
communities = Community.create([ { :location => "Glenora", :status => "Active" }, { :location => "Millhurst", :status => "Active" },
                                 { :location => "Beacon Heights", :status => "Active" }, { :location => "Wellington Park", :status => "Active" },
                                 { :location => "Terwillegar", :status => "Active" }, { :location => "Prince Rupert", :status => "Active" },
                                 { :location => "Olvier", :status => "Active" }, { :location => "Millhurst", :status => "Active" },
                                 { :location => "Canora", :status => "Active" }, { :location => "Woodcroft", :status => "Active" },
                                 { :location => "Cameron Heights", :status => "Active" }, { :location => "Pleasntview", :status => "Active" },
                                 { :location => "Kensington", :status => "Active" }, { :location => "Idylwylde", :status => "Active" },
                                 { :location => "Malmo", :status => "Active" }, { :location => "Twin Brooks", :status => "Active" },
                                 { :location => "Edmonton Evergreen", :status => "Active" }, { :location => "Killarney", :status => "Active" },
                                 { :location => "Willowby", :status => "Active" }, { :location => "Meadowlark", :status => "Active" },
                                 { :location => "Balwin", :status => "Active" }, { :location => "Blue Quill CL", :status => "Active" } ])
