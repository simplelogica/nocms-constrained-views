class CreateActsAsConstrainedDateConstraints < ActiveRecord::Migration
  def change
    create_table :acts_as_constrained_date_constraints do |t|
      t.date :starts_at
      t.date :ends_at
      t.references :constrained, polymorphic: true, index: { name: 'index_date_constraints_on_constrained' }
    end
  end
end
