class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/tasks" do
    tasks = Task.all
    tasks.to_json
  end

  get "/categories" do
    categories = Category.all
    categories.to_json
  end

  get "/app-names" do
    all_names = []
    all_tasks = Task.all
    all_tasks.each do |task|
      all_names << task.name
    end
    filtered_name = all_names.uniq
    filtered_name.to_json
  end

  delete "/task/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

end
