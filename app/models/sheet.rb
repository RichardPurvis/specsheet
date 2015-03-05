class Sheet < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :columns, dependent: :destroy
  belongs_to :user
end
