Rails.application.routes.draw do

  mount ConstrainedViews::Engine => "/constrained_views"
end
