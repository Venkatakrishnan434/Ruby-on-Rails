class TodosController < ApplicationController
  def index
        
  end
  def create 
    todo = Todo.new(user_params)
    if todo.save
      redirect_to root_path
    else
      render plain: "Failure"
    end
  end


     def list
      @todos = Todo.all.map {|todo| todo}
      render "list"
     end 

     def destroy
      id = params[:id]
      todo = Todo.find(id)
      todo.destroy 
      redirect_to root_path
  end

  def update 
    id = params[:id]
    todo = Todo.find(id)
    todo.completed = params[:completed]
    todo.save
    redirect_to root_path
end
     
  private
  def user_params
    params.require(:todos).permit(:task,:date,:completed)
  end

end
