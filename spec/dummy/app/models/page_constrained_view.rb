class PageConstrainedView < NoCms::ConstrainedViews::Base
  belongs_to :page

  constrained_by :single_date
  constrained_by :multiple_dates
  constrained_by :model

end
