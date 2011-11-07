class CommentsController < ApplicationController
  respond_to :html,:js
  before_filter :find_blog
  def index
    blog_id = params[:id]
    @blog = Blog.find(blog_id)
    @comments = Comment.find_all_by_blog_id(blog_id)
    @comment = Comment.new
    @comment.blog_id = blog_id
  end
  def new
    @comments = @blog.comments
    @comment = @blog.comments.build
  end
  def create
    @comment = @blog.comments.build(params[:comment])
    if @comment.save
      respond_with @comment,:location => new_blog_comment_path
    else
       render :action => "new"
    end
  end
  private
    def find_blog
      @blog = Blog.find(params[:blog_id])
    end
end
