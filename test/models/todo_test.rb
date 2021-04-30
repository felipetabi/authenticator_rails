# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TodoTest < ActiveSupport::TestCase
  
  test "title should not be empty" do 
    todo = Todo.new
    todo.title = "Hola Mundo"
    todo.save
    
    assert todo.errors.any? 
  end 
  
end
