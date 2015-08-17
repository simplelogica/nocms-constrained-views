class AddSingleDateConstraintToPageConstrainedView < ActiveRecord::Migration
  def change
    add_column :page_constrained_views, :single_date_constraint_starts_at, :date
    add_column :page_constrained_views, :single_date_constraint_ends_at, :date
  end
end
