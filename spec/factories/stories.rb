# == Schema Information
#
# Table name: stories
#
#  id             :bigint           not null, primary key
#  prefix         :string
#  payload        :jsonb
#  complete       :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  sub_topic_id   :bigint           not null
#  stem           :text
#  processed      :boolean          default(FALSE)
#  invalid_json   :boolean          default(FALSE)
#  invalid_images :boolean
#
FactoryBot.define do
  factory :story do
    prefix { Faker::Lorem.word }
    payload { { some_key: Faker::Lorem.word, another_key: Faker::Lorem.sentence } }
    complete { false }
  end
end
