require 'rails_helper'

describe NoCms::ConstrainedViews::Page, type: :model do

  it_behaves_like "model with has many relationship", :page_constrained_view, :block_slot, :block_slots, :container

  it_behaves_like "model with has many through belongs to relationship",
    :page_constrained_view, :block_slot, :block, :block_slots, :block, :blocks

  context "when duplicating" do

    let(:block_slots) { create_list :block_slot, 4  }
    let!(:original) { create :page_constrained_view, block_slots: block_slots }

    subject { original.dup }

    it "should copy the basic attributes" do
      expect(subject).to_not eq original
      expect(subject.template).to eq original.template
      expect(subject.template).to_not be_blank
    end

    it "should copy the slots" do

      expect(subject.block_slots.length).to eq original.block_slots.length

      block_slots.zip(subject.block_slots).each do |slot, dupped_slot|
        expect(slot).to_not eq dupped_slot
        expect(slot.template_zone).to eq dupped_slot.template_zone
        expect(slot.block).to_not eq dupped_slot.block
      end
    end

  end

end
