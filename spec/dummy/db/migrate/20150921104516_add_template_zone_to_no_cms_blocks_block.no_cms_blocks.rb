# This migration comes from no_cms_blocks (originally 20150904125311)
class AddTemplateZoneToNoCmsBlocksBlock < ActiveRecord::Migration
  def change
    add_column :no_cms_blocks_blocks, :template_zone, :string, index: true
  end
end
