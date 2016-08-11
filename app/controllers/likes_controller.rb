class LikesController < ApplicationController

  def create
      post = Post.find( params[:post_id] )
      like = Like.new( post: post, user: current_user )

      if like = Like.find_by( post: post, user: current_user )
         like.destroy
      else
         like = Like.new( post: post, user: current_user )
         like.save
      end

      redirect_to posts_path
   end

end
