active_record_migration_class =
  if Rails::VERSION::STRING[0..2].to_f >= 5
    ActiveRecord::Migration[Rails::VERSION::STRING[0..2].to_f]
  else
    ActiveRecord::Migration
  end

class CreateActsAsConstrainedDateConstraints < active_record_migration_class
  def change
    create_table :acts_as_constrained_date_constraints do |t|
      t.date :starts_at
      t.date :ends_at
      t.references :constrained, polymorphic: true, index: { name: 'index_date_constraints_on_constrained' }
    end
  end
end
