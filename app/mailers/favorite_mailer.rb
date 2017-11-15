class FavoriteMailer < ApplicationMailer
    default from: "tmconkwright@gmail.com"

    def new_comment(user, post, comment)

        headers["Message-ID"]  = "<comments/#{comment.id}@bloccit.example>"
        headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
        headers["References"]  = "<post/#{post.id}@bloccit.example>"

        @user = user
        @post = post
        @comment = comment

        mail(to: user.email, subject: "New comment on #{post.title}")
    end

    def new_post(post)
        headers["Message-ID"]  = "<posts/#{comment.id}@bloccit.example>"
        headers["In-Reply-To"] = "<post/#{post.id}@bloccit.example>"
        headers["References"]  = "<post/#{post.id}@bloccit.example>"

        @post = post
        mail(to: post.user.email, subject: "Your new post #{post.title}")
    end
end
