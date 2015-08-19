class PageConstrainedView < NoCms::ConstrainedViews::Base

  has_and_belongs_to_many :blocks, class_name: "NoCms::Blocks::Block", association_foreign_key: 'no_cms_blocks_block_id'

  belongs_to :page

  constrain_by :single_date
  constrain_by :date
  constrain_by :model

end
