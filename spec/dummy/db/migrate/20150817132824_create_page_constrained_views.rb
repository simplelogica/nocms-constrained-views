class CreatePageConstrainedViews < ActiveRecord::Migration
  def change
    create_table :page_constrained_views do |t|
      t.belongs_to :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
