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
        has_and_belongs_to_many :blocks,
          class_name: "NoCms::Blocks::Block",
          association_foreign_key: 'no_cms_blocks_block_id'
      end
    end

  end
end
