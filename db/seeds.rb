require 'random_data'

#create topics
15.times do
    Topic.create!(
        name:        RandomData.random_sentence,
        description: RandomData.random_paragraph
    )
end
topics = Topic.all

#Create Posts
50.times do
    SponsoredPost.create!(
        topic: topics.sample,
        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph,
        price: rand(1..999)
    )
end
posts = Post.all

=begin
#CreateComments
100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end
=end
puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
