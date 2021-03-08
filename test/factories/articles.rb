
FactoryBot.define do
  factory :article do 
    sequence(:title) {|number| "The title is #{number}"}
    sequence(:content) {|number| "The content number is #{number}"}
    sequence(:slug) {|number| "slug-hacker-#{number}"}
  end
end