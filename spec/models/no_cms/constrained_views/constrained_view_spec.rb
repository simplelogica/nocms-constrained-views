require 'rails_helper'

describe NoCms::ConstrainedViews::Page, type: :model do

  it_behaves_like "model with has many relationship", :page_constrained_view, :block_slot, :block_slots, :container

  it_behaves_like "model with has many through belongs to relationship",
    :page_constrained_view, :block_slot, :block, :block_slots, :block, :blocks

end
