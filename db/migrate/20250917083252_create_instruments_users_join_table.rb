class CreateInstrumentsUsersJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_join_table :instruments, :users do |t|
      # t.index [:instrument_id, :user_id]
      # t.index [:user_id, :instrument_id]
    end
  end
end
