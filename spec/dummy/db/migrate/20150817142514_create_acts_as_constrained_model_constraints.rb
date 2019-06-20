active_record_migration_class =
  if Rails::VERSION::STRING[0..2].to_f >= 5
    ActiveRecord::Migration[Rails::VERSION::STRING[0..2].to_f]
  else
    ActiveRecord::Migration
  end

class CreateActsAsConstrainedModelConstraints < active_record_migration_class
  def change
    create_table :acts_as_constrained_model_constraints do |t|
      t.references :constraining, polymorphic: true, index: { name: 'index_model_constraints_on_constraining' }
      t.references :constrained, polymorphic: true, index: { name: 'index_model_constraints_on_constrained' }
    end
  end
end
