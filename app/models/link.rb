class Link < ActiveRecord::Base
  belongs_to :build
  belongs_to :user
end
