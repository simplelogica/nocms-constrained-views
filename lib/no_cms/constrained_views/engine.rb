require 'acts-as-constrained'

module NoCms::ConstrainedViews
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::ConstrainedViews
  end
end
