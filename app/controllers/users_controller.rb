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
      ActiveRecord::Base.transaction do
        user.destroy!
        DeletedUser.create!(
          id: user.id,
          name: user.name,
          created_at: user.created_at,
          updated_at: user.updated_at,
          deleted_at: Time.zone.now,
        )
      end
    end

    redirect_to users_url
  end
end
