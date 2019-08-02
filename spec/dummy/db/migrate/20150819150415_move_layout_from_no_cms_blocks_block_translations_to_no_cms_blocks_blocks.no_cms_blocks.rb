active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20150710112549)
class MoveLayoutFromNoCmsBlocksBlockTranslationsToNoCmsBlocksBlocks < active_record_migration_class
  def up
    add_column :no_cms_blocks_blocks, :layout, :string

    NoCms::Blocks::Block::Translation.all.each do |translation|
      translation.globalized_model.update_column layout: translation.layout
    end

    remove_column :no_cms_blocks_block_translations, :layout, :string
  end

  def down
    add_column :no_cms_blocks_block_translations, :layout, :string
    NoCms::Blocks::Block::Translation.all.each do |translation|
      translation.update_column layout: translation.globalized_model.layout
    end
    remove_column :no_cms_blocks_blocks, :layout, :string
  end
end
