active_record_migration_class =
  if Rails::VERSION::MAJOR >= 5
    ActiveRecord::Migration[Rails::VERSION::MAJOR.to_f]
  else
    ActiveRecord::Migration
  end

class CreatePageConstrainedViews < active_record_migration_class
  def change
    create_table :page_constrained_views do |t|
      t.belongs_to :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
