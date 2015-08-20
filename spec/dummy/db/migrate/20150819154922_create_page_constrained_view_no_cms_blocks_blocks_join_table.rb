class CreatePageConstrainedViewNoCmsBlocksBlocksJoinTable < ActiveRecord::Migration
  def change
    create_join_table :page_constrained_views, :no_cms_blocks_blocks do |t|
      t.index [:page_constrained_view_id, :no_cms_blocks_block_id], name: 'index_blocks_page_constrained_views_on_view_id_and_block_id', unique: true
      t.index [:no_cms_blocks_block_id, :page_constrained_view_id], name: 'index_blocks_page_constrained_views_on_block_id_and_view_id', unique: true
    end
  end
end
