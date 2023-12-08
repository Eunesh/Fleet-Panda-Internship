
### Task #####
# class TodoList
#   def initialize
#     # Initialize an empty array to store tasks
#   end
#   def add_task(task)
#     # Add a task to the list
#   end
#   def complete_task(index)
#     # Mark a task as complete
#   end
#   def delete_task(index)
#     # Delete a task from the list
#   end
#   def show_tasks
#     # Display all tasks in the list
#   end
# end



class TodoList
  @@hash={}

  def initialize(task_name, task_discription)
    @task_name = task_name
    @task_discription = task_discription
  end

  def Add_task
    if (@task_name.is_a? String) and (@task_discription.is_a? String)
      @@hash[@task_name] = @task_discription
      return
    end
    puts "Invalid Task name or Task description "
  end


  def self.complete_task(task_name)
    if @@hash.key?(task_name)
      @@hash[task_name] = "This task is completed"
      return
    end
    puts "Sorry task not found to mark completion"
  end

  def self.delete_task(task_name)
    if @@hash.key?(task_name)
      @@hash.delete(task_name)
      return
    end
    puts "Sorry task not found to delete"
  end

  def self.show_tasks
    return @@hash
  end

end


#Creating Tasks
# task1 = TodoList.new("walk", "walking");
# task2 = TodoList.new("talk", "i will be talking");
# task3 = TodoList.new("speak", "i will be speaking");
# task4 = TodoList.new("run", "i will be running");
# task5 = TodoList.new("sleep", false);

#Adding Task
# task1.Add_task
# task2.Add_task
# task3.Add_task
# task4.Add_task
# task5.Add_task

#Marking task Complete
# TodoList.complete_task("walk");
# TodoList.complete_task("talk");



#Delete Task
# TodoList.delete_task("walk");
# TodoList.delete_task("talk");




# puts TodoList.show_tasks;
