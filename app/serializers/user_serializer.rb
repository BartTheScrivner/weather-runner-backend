class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :img_url, :location, :weekly_run_quota, :zipcode
  has_many :runs
  has_one :user_preference
end
