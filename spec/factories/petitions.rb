# == Schema Information
#
# Table name: petitions
#
#  id         :integer          not null, primary key
#  creator_id :integer          not null
#  title      :string(255)      not null
#  body       :text             not null
#  background :text             not null
#  approved   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :petition do
  end
end