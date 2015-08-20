require 'rails_helper'

describe NoCms::ConstrainedViews::Page, type: :model do

  it_behaves_like "model with has and belongs to many relationship",
    :page_constrained_view, :block, :blocks, nil

  let(:page) { create :page }

  context "when asigning constrained views" do

    before do
      page.constrained_views << create(:page_constrained_view)
    end

    subject { page.reload }

    it "should have the constraints" do
      expect(page.constrained_views).not_to be_blank
    end

  end

end
