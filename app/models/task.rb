class Task < ApplicationRecord

  def confirmed?
    completed ? 'Completed' : 'Pending'
  end
end
