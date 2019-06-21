active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

# This migration comes from no_cms_blocks (originally 20150709132202)
class AddNonTranslatedFieldsInfoToNoCmsBlocksBlock < active_record_migration_class
  def change
    if NoCms::ConstrainedViews.installed_db_gem == 'pg'
      add_column :no_cms_blocks_blocks, :fields_info, :text
    else
      add_column :no_cms_blocks_blocks, :fields_info, :longtext
    end
  end
end
