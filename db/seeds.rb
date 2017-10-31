require 'random_data'

#Create Posts
50.times do
    Post.create!(
        title: RandomData.random_sentence,
        body:  RandomData.random_paragraph
    )
end
posts = Post.all

#CreateComments
100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

Post.find_or_create_by!(
        title: "This is the one and only, original and lonely",
        body: "This is the one and only, original and lonely. This is the one an only, original and lonely. This is the one an only, original and lonely"
)

Comment.find_or_create_by!(
        post: posts.find(51),
        body: "Cooooooment, comment comment comment... comment.  Well I think comment comment comment"
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
