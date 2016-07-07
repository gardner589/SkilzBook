class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :builds, dependent: :destroy
end
