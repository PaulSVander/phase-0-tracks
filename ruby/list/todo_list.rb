class TodoList

  def initialize(todo_array)
    @todo_array = todo_array
  end

  def get_items
    return @todo_array
  end

  def add_item(item)
    @todo_array << item
  end

  def delete_item(item)
    @todo_array.delete(item)
  end

  def get_item(index)
    @todo_array[index]
  end

end