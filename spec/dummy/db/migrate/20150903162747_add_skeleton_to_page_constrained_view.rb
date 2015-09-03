class AddSkeletonToPageConstrainedView < ActiveRecord::Migration
  def change
    add_column :page_constrained_views, :skeleton, :string
  end
end
