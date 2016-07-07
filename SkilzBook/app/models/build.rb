class Build < ActiveRecord::Base
  belongs_to :skill
  has_many :comments, dependent: :destroy
  has_many :links, dependent: :destroy
end
