# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

include FactoryBot::Syntax::Methods
FactoryBot.define do
  factory :article do |number|

    sequence(:title) {|number| "The title is #{number}"}
    sequence(:content) {|number| "The content number is #{number}"}
    sequence(:slug) {|number| "slug-hacker-#{number}"}
  end
end

create_list(:article, 10)