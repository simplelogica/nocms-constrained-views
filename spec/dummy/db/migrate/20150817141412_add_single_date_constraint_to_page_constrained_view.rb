active_record_migration_class =
  if Rails::VERSION::STRING[0..2].to_f >= 5
    ActiveRecord::Migration[Rails::VERSION::STRING[0..2].to_f]
  else
    ActiveRecord::Migration
  end

class AddSingleDateConstraintToPageConstrainedView < active_record_migration_class
  def change
    add_column :page_constrained_views, :single_date_constraint_starts_at, :date
    add_column :page_constrained_views, :single_date_constraint_ends_at, :date
  end
end
