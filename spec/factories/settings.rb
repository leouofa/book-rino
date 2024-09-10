# == Schema Information
#
# Table name: settings
#
#  id         :bigint           not null, primary key
#  prompts    :text
#  tunings    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :setting do
    prompts { [] }
    tunings { [] }
  end
end
