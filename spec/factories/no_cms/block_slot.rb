# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :block_slot, class: NoCms::Blocks::BlockSlot do
    block { FactoryBot.create :block }
    template_zone {'body'}
  end
end
