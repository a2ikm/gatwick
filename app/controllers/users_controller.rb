class UsersController < ApplicationController
  def index
    @users = User.order(id: :desc)
  end

  def create
    begin
      User.create!(name: Gimei.name.kanji)
    rescue ActiveRecord::RecordNotUnique
      retry
    end

    redirect_to users_url
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user
      user.destroy
    end

    redirect_to users_url
  end
end
