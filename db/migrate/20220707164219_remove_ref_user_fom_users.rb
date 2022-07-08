class RemoveRefUserFomUsers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :user, index: true
  end
end
