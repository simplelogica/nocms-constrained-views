class AddTemplateToPageConstrainedView < ActiveRecord::Migration
  def change
    add_column :page_constrained_views, :template, :string
  end
end
