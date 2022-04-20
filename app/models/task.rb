class Task < ActiveRecord::Base
  belongs_to :category

  def self.current_apps
    all_names = []
    final_names = []
    all_tasks = Task.all
    all_tasks.each do |task|
      all_names << task.name.downcase
    end
    filtered_name = all_names.uniq
    filtered_name.each do |name|
      final_names << name.capitalize
    end
    final_names
  end

  
end