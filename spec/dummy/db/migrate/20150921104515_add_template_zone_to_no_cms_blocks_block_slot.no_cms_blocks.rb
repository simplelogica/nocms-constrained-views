# This migration comes from no_cms_blocks (originally 20150904125158)
class AddTemplateZoneToNoCmsBlocksBlockSlot < ActiveRecord::Migration
  def change
    add_column :no_cms_blocks_block_slots, :template_zone, :string, index: true
  end
end
