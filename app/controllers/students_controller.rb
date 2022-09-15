class StudentsController < ApplicationController
    def new
        @std = Student.new
    end 
    
    def create
        @std = Student.new(student_params)
        if @std.save
            flash[:notice] = "todo was created"
            redirect_to student_path(@std)
        else
            render 'new'
        end
    end


    def show
        @std = Student.find(params[:id])
    end

    
    private

    def student_params
        params.require(:student).permit(:name, :description)
    end
    
end

