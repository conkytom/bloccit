require 'random_data'

#Create Ads
50.times do
    Advertisement.create!(
        title: RandomData.random_sentence,
        copy:  RandomData.random_ad,
        price: RandomData.random_price
    )
end
advertisements = Advertisement.all

=begin
#CreateComments
100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
=end
