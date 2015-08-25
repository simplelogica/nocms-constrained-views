module NoCms::ConstrainedViews::Concerns
  ##
  # This concern implements a virtual attribute and a callback in order to
  # remove the relationship between a costrained view and its blocks withour
  # destroying the blocks themselves, which may be related with other objects.
  #
  # It's not included in the Base object because this depends on how the admin
  # and the application structure is proposed, and we can include it with a
  # simple include NoCms::ConstrainedViews::Concerns::RemovableBlocks line
  module RemovableBlocks

    include ActiveSupport::Concern

    def self.included klass

      klass.class_eval do

        ##
        # Virtual attribute for the block ids
        attr_accessor :removed_block_ids

        ##
        # We overwrite the reader to turn it into an arrray
        def removed_block_ids
          @removed_block_ids.nil? ? [] : @removed_block_ids.split
        end

        before_save :remove_removed_blocks

        ##
        # This callback remove all the blocks from the removed_block_ids array
        def remove_removed_blocks
          blocks.delete(blocks.find(removed_block_ids))
        end
        private :remove_removed_blocks

      end

    end

  end
end
