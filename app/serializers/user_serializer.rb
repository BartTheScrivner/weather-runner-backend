class UserSerializer < ActiveModel::Serializer
  has_many :runs, :friends, :friend_requests
  has_one :user_preference
  attributes :id, :name, :img_url, :location, :weekly_run_quota
end
