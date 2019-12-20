class AddDatetimeStringToShuttles < ActiveRecord::Migration[6.0]
  def change
    add_column :shuttles, :datetime_string, :string
  end
end
