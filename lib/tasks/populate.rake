# not using currently


# gem install populator

namespace :db do 
  desc "Erase and fill database"
  task :populate => :environment do
    # 100.times do |*args|
    #   Product.create
    # end
    require 'populator'
    require 'faker'
    
    # models
    [Article].each(&:delete_all) # [Category, Product, Person].each(&:delete_all)

    # create 20 records, random name each
    # Article.populate 20 do |article| # Category.populate 20 do |category|

    #   # using a word generator create 1 to 3 words
    #   article.name = Populator.words(1..3).titleize # category.name = Populator.words(1..3).titleize

    #   # categories has_many products, 10-100 products per category
    #   Article.populate 10..100 do |article|
    #     article.article_id = article_id
    #     article.title = Populator.words(1..5).titleize
    #     article.body = Populator.sentences(1..3).titleize
    #     article.price = [4.99, 19.99, 100]
    #     article.created_at = 2.years.ago..Time.now
    #   end
    # end
  
  # create 20 records, random name each
    Article.populate 20 do |article|
      # using a word generator create 1 to 3 words
      article.name = Populator.words(1..3).titleize
      # categories has_many products, 10-100 products per article
      Article.populate 10..100 do |article|
        article.title = Faker::Name.title
        article.body = Faker::Name.body
        # article.email = Faker::Internet.email
        # article.phone = Faker::PhoneNumber.phone_number
        # article.street = Faker::Address.street_address
        # article.city = Faker::Address.city
        # article.state = Faker::Address.us_state_abbr
        # article.zip = Faker::Address.zip_code
        # https://www.youtube.com/watch?v=tcJK3UmQasw
      end
    end
      # rake db:populate
  end
end

    
#       # categories has_many products, 10-100 products per category
#       Product.populate 10..100 do |products|
#         product.category_id = category_id
#         product.name = Populator.words(1..5).titleize
#         product.description = Populator.sentences(1..3).titleize
#         product.price = [4.99, 19.99, 100]
#         product.created_at = 2.years.ago..Time.now
#       end
#     end
  
#   # create 20 records, random name each
#     Person.populate 20 do |category|
#       # using a word generator create 1 to 3 words
#       category.name = Populator.words(1..3).titleize
    
#       # categories has_many products, 10-100 products per category
#       Product.populate 10..100 do |product|
#         product.name = Faker::Name.name
#         product.company = Faker::Company.name
#         product.email = Faker::Internet.email
#         product.phone = Faker::PhoneNumber.phone_number
#         product.street = Faker::Address.street_address
#         product.city = Faker::Address.city
#         product.state = Faker::Address.us_state_abbr
#         product.zip = Faker::Address.zip_code
#         # https://www.youtube.com/watch?v=tcJK3UmQasw
#       end
#     end
#       # rake db:populate
#   end
# end
