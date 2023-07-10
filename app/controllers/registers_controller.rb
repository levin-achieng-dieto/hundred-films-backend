class RegistersController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

    def index
        render json: Register.all, status: :ok
    end

    def show
        register = Register.find_by(id:params[:id])
        if register
            render json: register, status: :ok
        else
            render json: {error: "register not found"}
        end
    end

    def create
        register = Register.create!(register_params)
        render json: register, status: :created
    end

    private

    def render_unprocessable_entity(invalid)
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def render_record_not_found
        render json: {error: "member not found"}, status: :not_found
    end

    def register_params
        params.permit(:fullname, :email, :number, :date, :region, :availability)
    end
end
