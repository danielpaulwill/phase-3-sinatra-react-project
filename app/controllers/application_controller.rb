class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/tasks" do
    tasks = Task.all
    tasks.to_json(only: [:id, :name, :category_id, :description], include: {
      category: { only: [:name]}
    })
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

  get "/app-names" do
    Task.current_apps.to_json
  end

  get "/task-category/:id" do
    task = Task.find(params[:id])
    task.category.name.to_json
  end

  delete "/task/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  post '/tasks' do
    new_task = Task.create(
      name: params[:name],
      category_id: params[:category_id],
      description: params[:description]
    )
    new_task.to_json(only: [:id, :name, :category_id, :description], include: {
      category: { only: [:name]}
    })
  end

end
