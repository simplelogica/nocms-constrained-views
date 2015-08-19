class PageConstrainedView < NoCms::ConstrainedViews::Base

  has_many :blocks, class_name: "NoCms::Blocks::Block"

  belongs_to :page

  constrained_by :single_date
  constrained_by :multiple_dates
  constrained_by :model

end
