active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20150828120611)
class AddAwesomeNestedSetToNoCmsBlocksBlockSlots < active_record_migration_class
  def change
    add_reference :no_cms_blocks_block_slots, :parent, index: true
    add_column :no_cms_blocks_block_slots, :lft, :integer
    add_column :no_cms_blocks_block_slots, :rgt, :integer
    add_column :no_cms_blocks_block_slots, :depth, :integer

    if Rails.version > "4.2"
      add_foreign_key :no_cms_blocks_block_slots, :no_cms_blocks_block_slots, column: 'parent_id'
    end

  end
end
