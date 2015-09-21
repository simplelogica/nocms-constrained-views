module NoCms::ConstrainedViews
  class Base < ActiveRecord::Base
    self.abstract_class = true

    include ActsAsConstrained::Concerns::Constrained

    ##
    # We include the has_and_belongs_to_many relationship only when this class is extended.
    # Otherwise, the relationship won't know wich join table must use.
    def self.inherited klass
      super

      klass.class_eval do
        include NoCms::Blocks::Concerns::ModelWithSlots
        include NoCms::Blocks::Concerns::ModelWithTemplate

        def dup_with_slots
          duplicated = dup_without_slots
          block_slots.each do |slot|
            duplicated.block_slots << slot.dup
          end
          duplicated
        end
        alias_method_chain :dup, :slots

      end

    end

  end
end
