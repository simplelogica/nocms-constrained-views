class PageConstrainedView < NoCms::ConstrainedViews::Base

  belongs_to :page

  constrain_by :single_date
  constrain_by :date
  constrain_by :model

end
