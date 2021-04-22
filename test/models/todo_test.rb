require "test_helper"

class TodoTest < ActiveSupport::TestCase
  
  test "title should not be empty" do 
    todo = Todo.new
    todo.title = "Hola Mundo"
    todo.save
    
    assert todo.errors.any? 
  end 
  
end
