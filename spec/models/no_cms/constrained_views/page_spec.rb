require 'rails_helper'

describe Page, type: :model do

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
