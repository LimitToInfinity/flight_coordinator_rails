class PeopleController < ApplicationController

    before_action :find_person, only: [:show, :update, :destroy]

    def index
        authorization_header = request.headers[:authorization]
        if (!authorization_header)
            render status: :unauthorized
        else
            token = authorization_header.split(" ")[1]
            secret_key = Rails.application.secrets.secret_key_base[0]
            decoded_token = JWT.decode(token, secret_key)

            @user = User.find(decoded_token[0]["user_id"])

            @people = Person.all
            render json: PersonSerializer.new(@people)
        end
    end

    def show
        render json: PersonSerializer.new(@person)
    end

    def create
        @person = Person.new(person_params)

        if @person.valid?
            @person.save
            render json: PersonSerializer.new(@person), status: :created
        else
            render json: @person.errors, status: :unprocessable_entity
        end
    end

    def update
        if @person.update(person_params)
            render json: PersonSerializer.new(@person)
        else
            render json: @person.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @person.destroy
    end

    private

    def find_person
        @person = Person.find(params[:id])
    end

    def person_params
        params.require(:person).permit(:name, :image)
    end
    
end