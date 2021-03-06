# This migration comes from no_cms_blocks (originally 20150828120611)
class AddAwesomeNestedSetToNoCmsBlocksBlockSlots < ActiveRecord::Migration
  def change
    add_reference :no_cms_blocks_block_slots, :parent, index: true
    add_column :no_cms_blocks_block_slots, :lft, :integer
    add_column :no_cms_blocks_block_slots, :rgt, :integer
    add_column :no_cms_blocks_block_slots, :depth, :integer

    add_foreign_key :no_cms_blocks_block_slots, :no_cms_blocks_block_slots, column: 'parent_id'

  end
end
