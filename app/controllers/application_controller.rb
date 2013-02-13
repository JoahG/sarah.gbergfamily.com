class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :render_body
  helper_method :related
  helper_method :redirect_to_home
  private

  def related(p)
  	related = []
  	p.tag_list.each do |tag|
  		Post.all.each do |post|
  			if post.tag_list.include? tag and post != p
  				related.push(post)
  			end
  		end
  	end
  	return related
  end

  def redirect_to_home
  	redirect_to root_url
  end

  def render_body(p)
    require 'redcarpet'
    redcarpet = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new, {fenced_code_blocks: true})
    return redcarpet.render p
  end

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
