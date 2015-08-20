require 'acts-as-constrained'
require 'nocms-blocks'

module NoCms::ConstrainedViews
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::ConstrainedViews
  end
end
