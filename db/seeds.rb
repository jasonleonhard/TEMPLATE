# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'
include Faker

100.times do
  article = Article.create( :title => Faker::Name.title, #=> "Legacy Creative Director",
                            :body => Faker::Lorem.sentence #=> 
                            # :body => Faker::Lorem.sentence(5) #=> 
                          )
  puts article.inspect
end
# rake db:reset db:migrate db:seed


# below worked:

# require 'faker'
# include Faker

# 100.times do
#   article = Article.create( :title => "Example Title: #{1..100}",
#                             :body => 'Body of knowlege'
#                           )
#   puts article.inspect
# end
# # rake db:reset
# # rake db:seed