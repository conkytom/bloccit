module UsersHelper
    def user_has_posted?
        @user.posts.count > 0
    end

    def user_has_commented?
        @user.comments.count > 0
    end

    def user_has_favorites?
        @user.favorites.count > 0
    end
end
