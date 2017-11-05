require 'random_data'

#Create Posts
50.times do
    Question.create!(
        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph,
        resolved: RandomData.random_bool
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

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
=end
