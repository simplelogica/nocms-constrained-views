module NoCms::ConstrainedViews
  class Base < ActiveRecord::Base
    include ActsAsConstrained::Concerns::Constrained
  end
end
