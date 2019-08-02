active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

class AddTemplateToPageConstrainedView < active_record_migration_class
  def change
    add_column :page_constrained_views, :template, :string
  end
end
