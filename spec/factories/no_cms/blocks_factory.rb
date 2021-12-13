# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :block, class: NoCms::Blocks::Block do
    layout { 'default' }
    draft { false }
  end
end

