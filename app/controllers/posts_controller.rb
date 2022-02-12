class PostsController < ApplicationController

  def index
  end

  before_action :authenticate_user!

  def new
    @post = Posts.new
  end

  def create
  end
end 

