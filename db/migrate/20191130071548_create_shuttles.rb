class CreateShuttles < ActiveRecord::Migration[6.0]
  def change
    create_table :shuttles do |t|
      t.datetime :datetime

      t.timestamps
    end
  end
end
