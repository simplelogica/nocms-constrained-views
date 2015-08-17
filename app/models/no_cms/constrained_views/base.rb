module NoCms::ConstrainedViews
  class Base < ActiveRecord::Base
    self.abstract_class = true

    include ActsAsConstrained::Concerns::Constrained
  end
end
