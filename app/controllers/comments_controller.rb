class CommentsController < ApplicationController
  def index

    @blogid = params[:id]
    @blog = Blog.find(@blogid)
    @comments = Comment.find_all_by_blog_id(@blogid)
    @comment = Comment.new
    @comment.blog_id=@blogid

  end

  def create
    @comment = Comment.new(params[:comment])
    @content = @comment.content;
    @id = @comment.blog_id

    if @comment.content == nil
      flash[:notice] = "no"
     redirect_to :controller => 'blogs',:action=>'index'
  else

     if @comment.save
       flash[:notice] = @comment.content
     redirect_to :controller => 'comments',:action=>'index' ,:id=>@id
     end
     #flash[:notice] = "success"

    end

  end

end
