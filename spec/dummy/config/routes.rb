Rails.application.routes.draw do

  mount NoCms::ConstrainedViews::Engine => "/constrained_views"
end
