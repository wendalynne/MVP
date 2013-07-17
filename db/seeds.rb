# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Accreditation.create([
  { :individual_income => nil, :joint_income => nil, :net_worth => nil, :experience => nil, :agree => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



Authentication.create([
  { :user_id => nil, :provider => nil, :uid => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



Campaign.create([
  { :biz_name => "State Bird Provisions", :blurb => "James Beard best new restaurant (and the best meal I've ever had)!", :about => nil, :why_join => nil, :location_id => 5, :campaign_starter_id => 1, :host_id => nil, :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :successful => false, :expires => "2013-07-30" },
  { :biz_name => "Ice Cream Bar", :blurb => "Old fashioned ice cream and soda parlor - mixed and made right in front of you!", :about => nil, :why_join => nil, :location_id => 6, :campaign_starter_id => 1, :host_id => nil, :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :successful => false, :expires => "2013-07-28" },
  { :biz_name => "Coffee Bar", :blurb => "You say cortahdo, I say cortaydo, all it is is excellent, excellent coffee", :about => nil, :why_join => nil, :location_id => 7, :campaign_starter_id => 1, :host_id => nil, :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :successful => false, :expires => "2013-07-29" },
  { :biz_name => "SPQR", :blurb => "If food like what SPQR is making was around then, the Roman Empire would not have fallen (just downsized)", :about => nil, :why_join => nil, :location_id => 8, :campaign_starter_id => 1, :host_id => nil, :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :successful => false, :expires => "2013-08-08" }
], :without_protection => true )



Charge.create([
  { :full_name => nil, :last4 => nil, :user_id => nil, :token => nil, :location_id => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



Comment.create([
  { :content => nil, :user_id => nil, :created_at => nil, :updated_at => nil, :commentable_id => nil, :commentable_type => nil }
], :without_protection => true )



Event.create([
  { :title => "Pie Shake Make", :people_limit => 35, :description => "Make pies with Chile Pies and Creamery", :menu_pdf => "http://www.nen.nl/pdfpreview/preview_68011.pdf", :menu_text => nil, :date => "2013-07-20", :cost => 35.0, :length => 120, :other_info => nil, :created_at => "2013-07-16 03:51:54", :updated_at => "2013-07-16 03:51:54", :host_id => 4, :blurb => "it will be fun!", :time => "2000-01-01 16:00:00" },
  { :title => "Take a Breath", :people_limit => 30, :description => "Tea tasting with Jesse Jacobs, the tea guru behind Samovar", :menu_pdf => "http://www.nen.nl/pdfpreview/preview_68011.pdf", :menu_text => nil, :date => "2013-07-21", :cost => 40.0, :length => 90, :other_info => nil, :created_at => "2013-07-16 03:51:54", :updated_at => "2013-07-16 03:51:54", :host_id => 2, :blurb => "Tea tasting and meditation", :time => "2000-01-01 10:00:00" },
  { :title => "Chronicles of Naan'ia", :people_limit => 30, :description => "Help develop a naan recipe with the founders of Tava", :menu_pdf => "http://www.nen.nl/pdfpreview/preview_68011.pdf", :menu_text => nil, :date => "2013-07-24", :cost => 40.0, :length => 150, :other_info => nil, :created_at => "2013-07-16 03:51:54", :updated_at => "2013-07-16 03:51:54", :host_id => 3, :blurb => "There will be 'naan' left", :time => "2000-01-01 19:00:00" },
  { :title => "All the Fishes in the Sea", :people_limit => 50, :description => "Learn about sustainable seafood over a 4 course lunch near the Bay, all while supporting local fishermen!", :menu_pdf => "http://www.nen.nl/pdfpreview/preview_68011.pdf", :menu_text => nil, :date => "2013-07-27", :cost => 70.0, :length => 180, :other_info => nil, :created_at => "2013-07-16 03:51:54", :updated_at => "2013-07-16 03:51:54", :host_id => 5, :blurb => "Dive into sustainable fishing over lunch", :time => "2000-01-01 12:00:00" }
], :without_protection => true )



Follow.create([
  { :user_id => nil, :followable_id => nil, :followable_type => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



Guest.create([
  { :first_name => nil, :last_name => nil, :email => nil, :ticket_id => nil, :event_id => nil, :user_id => nil, :token => nil, :created_at => nil, :updated_at => nil, :charge_id => nil }
], :without_protection => true )



Image.create([
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/zxmyEXBJTNGN3Oc0eIlG_Food+4.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/z4Qvb3XQRuMQfwIckMJC_Food+6.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/yG4DhnAfQneTpsJbSDvT_Food+2.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/yDZKNZLBRYmdc1AxV9KQ_Food+20.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/xvKaCNccTmCPtnxw0N7o_Food+4.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/xOwmtOYVRhunCfXbite6_Food+1.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 1, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/0eqXVjawQjYY7TgVwhHF_Food+26.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/0rRazoNmQoexZADzPQts_Food+12.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/1osYRPMSyWf1cYXBRjnK_Food+2.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/2CpHoxIS9Cktg1QTHOiB_Food+63.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' }, 
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/31YyrhGTDOuGNOKdN9EV_Food+7.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/4TNPlzvSSXeHwkLJ9kNr_Food+54.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 2, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/5yjUMGmQJWJbcy32WNdw_Food+16.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/63AUR35R3Si4zifgNYFr_Food+61.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/64gUAX9TbK59N09tUE5S_Food+4.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/6NxAcryKRxW2gXpopmT2_Food+31.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/6nRYqrrTtipCsvgSo2ag_Food+30.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/71rRBcG6RlCp427rFUxq_Food+71.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 3, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/9n1JCc6rQiiDXVSWISnP_Food+25.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/9s4scj1STZmP63D0EL8K_Food+67.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/ApBUKvvUSpOusjzw9wfq_Food+2.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/BFSMNA3JQuueuD0KfnGw_Food+13.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/JxpR9iMRwqfmkLV3bRCK_Food+19.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' },
  { :image => 'https://s3-us-west-1.amazonaws.com/simmreventimages/simmreventimages/K57whb3jTlqTieqmKLCp_Food+75.jpg', :created_at => nil, :updated_at => nil, :title => nil, :description => nil, :imageable_id => 4, :imageable_type => 'SurveyAnswer' }
], :without_protection => true )



Investment.create([
  { :user_id => nil, :project_id => nil, :amount => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



Location.create([
  { :address1 => "123 Mission St.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94109", :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :user_id => 3, :event_id => 1, :neighborhood => "NoPa", :location_title => nil },
  { :address1 => "456 Market St.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94122", :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 06:33:24", :user_id => 2, :event_id => 2, :neighborhood => "SoMa", :location_title => nil },
  { :address1 => "789 2nd St.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94104", :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :user_id => 4, :event_id => 3, :neighborhood => "Mission", :location_title => nil },
  { :address1 => "123 Union St.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94109", :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :user_id => 5, :event_id => 4, :neighborhood => "Marina", :location_title => nil },
  { :address1 => "123 Fillmore St.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94109", :created_at => "2013-07-16 03:51:55", :updated_at => "2013-07-16 03:51:55", :user_id => nil, :event_id => nil, :neighborhood => "Japantown", :location_title => nil },
  { :address1 => "1492 Pacific Ave.", :address2 => nil, :city => "San Francisco", :state => "California", :zipcode => "94109", :created_at => "2013-07-16 06:58:39", :updated_at => "2013-07-16 06:58:39", :user_id => nil, :event_id => nil, :neighborhood => "Nob Hill", :location_title => nil }
], :without_protection => true )



Profile.create([
  { :blurb => "the only thing better than pie or ice cream is pie AND ice cream", :location_id => nil, :story => nil, :home_zip => "94109", :work_zip => "94109", :user_id => 3, :created_at => "2013-07-16 06:40:37", :updated_at => "2013-07-16 06:42:06", :biz_name => "Chile Pies and Creamery", :yelp_id => nil, :neighborhood => "NoPa" },
  { :blurb => "I came, I saw, [I photographed], I ate", :location_id => 6, :story => nil, :home_zip => "94109", :work_zip => "94109", :user_id => 1, :created_at => "2013-07-16 06:43:39", :updated_at => "2013-07-16 06:59:11", :biz_name => nil, :yelp_id => nil, :neighborhood => "Nob Hill" },
  { :blurb => "find peace in the middle of chaos", :location_id => nil, :story => nil, :home_zip => "94109", :work_zip => "94107", :user_id => 2, :created_at => "2013-07-16 06:43:40", :updated_at => "2013-07-16 06:44:45", :biz_name => "Samovar Tea Lounge", :yelp_id => nil, :neighborhood => "SoMa" },
  { :blurb => "ask me about the burroti", :location_id => nil, :story => nil, :home_zip => "94122", :work_zip => "94109", :user_id => 3, :created_at => "2013-07-16 06:43:40", :updated_at => "2013-07-16 06:45:30", :biz_name => "Tava", :yelp_id => nil, :neighborhood => "SoMa" },
  { :blurb => "plenty of fish in the sea (and need to keep it that way!)", :location_id => nil, :story => nil, :home_zip => "94109", :work_zip => "94109", :user_id => 4, :created_at => "2013-07-16 06:43:40", :updated_at => "2013-07-16 06:45:16", :biz_name => "Fish", :yelp_id => nil, :neighborhood => "Marina" }
], :without_protection => true )



Project.create([
  { :user_id => nil, :name => nil, :logo => nil, :location => nil, :description => nil, :target => nil, :raised => nil, :terms => nil, :min_investment => nil, :created_at => nil, :updated_at => nil, :business_plan => nil, :category => nil, :approved => nil }
], :without_protection => true )



Signup.create([
  { :email => nil, :chef => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )



SurveyAnswer.create([
  { :survey_question_id => 1, :text => 'established restaurants', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 1, :text => 'new restaurants', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 1, :text => 'food trucks/pop ups', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 1, :text => 'desserts & bakeries', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 1, :text => 'bars & nightlife', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 1, :text => 'coffee & tea', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'Asian', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'Mexican', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'Italian', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'French', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'American (traditional)', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 2, :text => 'American (new)', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Foreign Cinema', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Sushirrito', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Chez Panisse', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Lazy Bear', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Radio Africa Kitchen', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 3, :text => 'Mission Chinese', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => 'Tea Tasting with Samovar', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => 'Naan Making with Tava', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => 'Farm to Table Meal with Hillside Supper Club', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => 'Sustainable Seafood Dinner with Fish', :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => "Cocktail Making with Capo's", :created_at => nil, :updated_at => nil },
  { :survey_question_id => 4, :text => "Pizza Making with Tony's Pizza", :created_at => nil, :updated_at => nil }
], :without_protection => true )



SurveyQuestion.create([
  { :for_chef => nil, :question => 'Which 3 of the below categories of food/drink are you most interested in?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => nil, :high_extreme => nil, :format => 'option', :active => true },
  { :for_chef => nil, :question => 'Which cuisines do you like the most?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => nil, :high_extreme => nil, :format => 'option', :active => true },
  { :for_chef => nil, :question => 'Which 3 of the below restaurants would you be MOST likely to go to?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => nil, :high_extreme => nil, :format => 'option', :active => true },
  { :for_chef => nil, :question => 'Which 3 of the below events would you be MOST excited to attend?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => nil, :high_extreme => nil, :format => 'option', :active => true },
  { :for_chef => nil, :question => 'Which type of event would you be most excited about?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => "so hands off it's like I'm watching TV", :high_extreme => "so hands on I better wear an apron", :format => 'slider', :active => true },
  { :for_chef => nil, :question => 'Which type of event would you be most excited about?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => "so small it's like a date between me and the chef", :high_extreme => "so big everybody's here. and their moms. and dads. and second cousins from Georgia", :format => 'slider', :active => true },
  { :for_chef => nil, :question => 'Which type of event would you be most excited about?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => "so impossible to get into I needed an invite to my own party. and still bribed the bouncer", :high_extreme => "so easy to get into that I walked in without a shirt", :format => 'slider', :active => true },
  { :for_chef => nil, :question => 'What is the maximum you would pay for a cool event?', :created_at => nil, :updated_at => nil, :topic => nil, :low_extreme => '$10', :high_extreme => '$250', :format => 'slider', :active => true }
], :without_protection => true )



Ticket.create([
  { :user_id => nil, :event_id => nil, :num_guests => nil, :created_at => nil, :updated_at => nil, :total_paid => nil, :charge_id => nil }
], :without_protection => true )



User.create([
  { :first_name => "Wendy", :last_name => "Lin", :chef => false, :approved => false, :created_at => "2013-07-16 04:36:48", :updated_at => "2013-07-16 06:49:39", :email => "linwendy08@gmail.com", :encrypted_password => "$2a$10$aYtFUw9MTpUSynJf5pkFT.tDckB.xLe6F59izEJc6/DaAbIOm4IiW", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 2, :current_sign_in_at => "2013-07-16 06:49:39", :last_sign_in_at => "2013-07-16 04:36:49", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :completed => false },
  { :first_name => "Jesse", :last_name => "Jacobs", :chef => true, :approved => false, :created_at => "2013-07-16 04:37:58", :updated_at => "2013-07-16 04:37:58", :email => "abc@gmail.com", :encrypted_password => "$2a$10$amfHriW8qLRZV0lwCL6qAOSWsJB.walT/U/AjGBT5w30vlW5hyi76", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-07-16 04:37:58", :last_sign_in_at => "2013-07-16 04:37:58", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :completed => false },
  { :first_name => "Heather", :last_name => "Pie", :chef => true, :approved => false, :created_at => "2013-07-16 04:38:55", :updated_at => "2013-07-16 04:38:55", :email => "def@gmail.com", :encrypted_password => "$2a$10$Ff/TE3p35.dt8r4vRhdr7ux0Q5ibrywGhP68IlJObZsH3oe1Ya5OG", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-07-16 04:38:55", :last_sign_in_at => "2013-07-16 04:38:55", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :completed => false },
  { :first_name => "Vijay", :last_name => "Tava", :chef => true, :approved => false, :created_at => "2013-07-16 04:39:41", :updated_at => "2013-07-16 04:39:41", :email => "ghi@gmail.com", :encrypted_password => "$2a$10$tpKtQHkPl0mvYI30nByZE.niruFpVSBBxPHkXyY/GzyyxTm4YpDJ2", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-07-16 04:39:41", :last_sign_in_at => "2013-07-16 04:39:41", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :completed => false },
  { :first_name => "Doug", :last_name => "Fisherman", :chef => true, :approved => false, :created_at => "2013-07-16 04:40:21", :updated_at => "2013-07-16 04:40:21", :email => "jkl@gmail.com", :encrypted_password => "$2a$10$ixSPb/BqAHPm0mDDTevIWunZOHoNh8vILahXJkiOa4OTyPdntq.Yq", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-07-16 04:40:21", :last_sign_in_at => "2013-07-16 04:40:21", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :completed => false }
], :without_protection => true )



UserAnswer.create([
  { :user_id => nil, :survey_question_id => nil, :text => nil, :created_at => nil, :updated_at => nil }
], :without_protection => true )