# Story: As a programmer, I can create a new Task record with a title and description.
def make_new_task(title, description, done=false)
  task = Task.new
  task.title = title
  task.description = description
  task.done = done
  task.save
end

# Story: As a programmer, I can list all Task records.
def list_all_tasks
  task = Task.all
end

# Story: As a programmer, I can set a Task record to done given the ID of the record.
def set_done(id)
  task = Task.find(id)
  task.done = true
  task.save
end

#Story: As a programmer, I can change the status of a Task record from done to not_done.
def set_not_done(id)
  task = Task.find(id)
  task.done=false
  task.save
end

# Story: As a programmer, I can list all the records that are done.
def show_done
  task = Task.where(done: true).all
end


# Story: As a programmer, I can list all the records that are not done.
def show_not_done
  task = Task.where(done: false).all
end

# Story: As a programmer, I can update the title and description of a Task record given the ID of the record.
def update_task(id, title, description)
  task = Task.find(id)
  task.title = title
  task.description = description
  task.save
end

# Story: As a programmer, I can destroy a Task record given the ID of the record.
def destroy_task(id)
  task = Task.find(id)
  task.destroy
  task.save
end

# Story: As a programmer, I can set a Task record with a due date.
def make_task_due(title, description, done=false, due_date)
  taskdue = Task.new
  taskdue.title = title
  taskdue.description = description
  taskdue.done = done
  taskdue.due_date = due_date
  taskdue.save
end

# Story: As a programmer, I can list all the records with a due date.
def show_due_tasks
  task = Task.where.not(due_date: nil).all
end

# Story: As a programmer, I can list all the records with a due date today.
def show_due_today
  task = Task.where(due_date: Date.today).all
end

# Story: As a programmer, I can list all the records without a due date.
def show_no_date
  task = Task.where(due_date: nil).all
end

# Story: As a programmer, I can add multiple comments to a Task record.
def add_comment(task_id, str)
  task = Task.find(task_id)
  new_comment = Comment.new
  new_comment.comment = str
  task.comments << new_comment
  new_comment.save
end

# Story: As a programmer, I can list all the Task with their comments.
def list_tasks_with_comments
  all_tasks = Task.all
  all_tasks.each do |task|
    puts "Task: " + task.title
    task.comments.each {|c| puts "Comment: " + c.comment}
  end
end
