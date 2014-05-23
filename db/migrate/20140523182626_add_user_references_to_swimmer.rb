class AddUserReferencesToSwimmer < ActiveRecord::Migration
  def change
    add_reference :swimmers, :user
  end
end
