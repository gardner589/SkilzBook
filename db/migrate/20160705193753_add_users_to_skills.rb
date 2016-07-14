# AM: +1 using additional migrations to update tables.
class AddUsersToSkills < ActiveRecord::Migration
  def change
    add_reference :skills, :user, index: true, foreign_key: true
  end
end
