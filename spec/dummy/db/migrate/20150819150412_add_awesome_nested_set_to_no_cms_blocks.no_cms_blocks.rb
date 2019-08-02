active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20140405150944)
class AddAwesomeNestedSetToNoCmsBlocks < active_record_migration_class
  def change
    add_column :no_cms_blocks_blocks, :parent_id, :integer
    add_column :no_cms_blocks_blocks, :lft, :integer
    add_column :no_cms_blocks_blocks, :rgt, :integer
    add_column :no_cms_blocks_blocks, :depth, :integer
  end
end
