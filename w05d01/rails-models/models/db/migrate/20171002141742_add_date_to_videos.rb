class AddDateToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :date, :datetime
  end
end
