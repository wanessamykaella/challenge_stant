class RemoveShiftColumnOnTracks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :shift
  end
end
