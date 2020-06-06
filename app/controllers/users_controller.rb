class UsersController < ApplicationController
    def index
        @user = User.all
        render json: @user
    end

    def show
        @user = User.find_or_create_by(firebaseId: params[:id])
        
        render json: @user.to_json(
            :include => [
                :sales => {  :except => [:id, :customer_id, :item_id, :user_id, :updated_at],
                            :include => [:item  , :customer , :merchant]
                }
            ]
        )
    end

    
end
