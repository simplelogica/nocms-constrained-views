active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20140618150651)
class AddPositionToNoCmsBlocksBlock < active_record_migration_class
  def change
    add_column :no_cms_blocks_blocks, :position, :integer
  end
end
