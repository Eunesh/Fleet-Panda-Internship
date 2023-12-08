require './December8/Todo'


describe TodoList do

  before(:all) do
    @todo_list = TodoList.new('Task 1', "discription")
    @todo_list2 = TodoList.new('Task1', false)

    @@hash={};

  end


  describe '#Add_task' do
    it 'adds a task to the Hash' do
      @todo_list.Add_task
      expect(@@hash).to have_key('Task 1')
    end

    #if we pass other data type except string it will display invalid message
    it 'handles invalid task name or description' do
      @todo_list2.Add_task
      expect{@todo_list2.Add_task}.to output(/Invalid Task name or Task description/).to_stdout
    end
  end

  describe '.complete_task' do
    it 'marks a task as completed' do
      @todo_list.Add_task  #Need to add task before marking as completed
      TodoList.complete_task('Task 1')
      expect(@@hash).to eq({'Task 1' => 'This task is completed'})
    end

    #if we pass non-existent Task to complete_task it will display task not found messgage
    it 'handles non-existent tasks' do
      expect { TodoList.complete_task('Non-existent Task') }.to output(/Sorry task not found to mark completion/).to_stdout
    end
  end

  describe '.delete_task' do
    it 'deletes a task from the list' do
      @todo_list.Add_task #need to add before deleting task
      TodoList.delete_task('Task 1')
      expect(@@hash).to eq({})
    end

    #displays not found message if we try to pass not existing task
    it 'handles non-existent tasks' do
      expect { TodoList.delete_task('Non-existent Task') }.to output(/Sorry task not found to delete/).to_stdout
    end
  end

  describe '.show_tasks' do
    it 'returns the hash of tasks' do
      @todo_list.Add_task # First adding some task
      expect(TodoList.show_tasks).to eq({'Task 1' => 'discription'})
    end
  end
end
