class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :location, :weekly_run_quota
  has_many :runs
  has_one :user_preference
end
