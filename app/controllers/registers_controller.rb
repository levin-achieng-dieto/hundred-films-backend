class RegistersController < ApplicationController

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
    def register_params
        params.permit(:fullname, :email, :number, :date, :region, :availability)
    end
end
