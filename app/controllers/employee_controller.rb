class EmployeeController < ApplicationController

    
    def new
        @name = Name.new
    end
    def create
        # @name = Name.new(name_params)
        # if @name.save
        #     session[:name_id] = @name.id
        #     redirect_to '/dashboard'
        # else
        #     flash[:rgister_error] = @name.errors.full_messages
        #     redirect_to '/'
        # end
    end
    def show
       @show = Name.all

       render json: @show
    end

    def login
        @name = Name.find_by(name: params[:name])

        if @name
            
            session[:name_id] = @name.id
            
        else
            flash[:error] = "Error- please try to create an account"
            # redirect_to '/'
        end
    end


    private
        
        def name_params
            params.require(:name).permit(:name, :password, :email, :city, :country, :pincode)
        end
end
