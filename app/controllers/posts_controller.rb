class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse[0..9]
    @posts_all = Post.all.reverse
    @right_buttons = Button.all.select{|b| b.side.downcase == "right"}
    @left_buttons = Button.all.select{|b| b.side.downcase == "left"}
    @home = true

    respond_to do |format|
      format.html
      format.atom
    end
  end

  def admin
    @posts = Post.all.reverse
    @users = User.all
    @buttons = Button.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    
    if request.path != post_path(@post)
      redirect_to @post, :status => :moved_permanently
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to @post
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to root_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

  def tag
    @posts = Post.all.select { |e| e.tag_list.include? params[:tag]  }
    @posts_all = Post.all
    @right_buttons = Button.all.select{|b| b.side.downcase == "right"}
    @left_buttons = Button.all.select{|b| b.side.downcase == "left"}
    
    render 'index'
  end

  def archive
    @posts = Post.all.reverse
  end
end
