class UsersController < ApplicationController
    def create
        user = User.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            phone_number: params[:phone_number]
        )
        if user.valid?
            render json: user
        else
            render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        user = User.find_by(id: params[:id])
        user.update(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            phone_number: params[:phone_number]
        )
        if user.valid?
            render json: user
        else
            render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
        end
    end
end
