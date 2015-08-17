class Page < ActiveRecord::Base

  has_many :constrained_views, class_name: "PageConstrainedView"

end
