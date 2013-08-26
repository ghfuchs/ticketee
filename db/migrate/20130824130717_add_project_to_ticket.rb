class AddProjectToTicket < ActiveRecord::Migration
  def change
    add_reference :tickets, :project, index: true
  end
end
