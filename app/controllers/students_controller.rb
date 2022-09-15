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


    def edit
        @std = Student.find(params[:id])
    end

    def update
        @std = Student.find(params[:id])
        if @std.update(student_params)
            flash[:notice] = "student table is update"
            redirect_to student_path(@std)
        else
            render 'edit'
        end
    end


    
    private

    def student_params
        params.require(:student).permit(:name, :description)
    end
    
end

