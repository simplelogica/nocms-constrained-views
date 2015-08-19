class PageConstrainedView < NoCms::ConstrainedViews::Base

  has_and_belongs_to_many :blocks, class_name: "NoCms::Blocks::Block", association_foreign_key: 'no_cms_blocks_block_id'

  belongs_to :page

  constrained_by :single_date
  constrained_by :multiple_dates
  constrained_by :model

end
