active_record_migration_class =
  if Rails::VERSION::STRING[0..2].to_f >= 5
    ActiveRecord::Migration[Rails::VERSION::STRING[0..2].to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20140405135410)
class CreateNoCmsBlocksBlocks < active_record_migration_class
  def change
    create_table :no_cms_blocks_blocks do |t|

      t.timestamps null: false
    end

    NoCms::Blocks::Block.translated_attribute_names = [:locale, :layout, :fields_info, :draft]

    create_table :no_cms_blocks_block_translations do |t|
      t.belongs_to :no_cms_blocks_block, index: { name: :no_cms_blocks_block_id }
      t.string :locale
      t.string :layout
      if NoCms::Blocks.installed_db_gem == 'pg'
        t.text :fields_info
      else
        t.text :fields_info, :limit => 4294967295
      end
      t.boolean :draft
    end
  end
end
