class Realestate < ActiveRecord::Base
  validates_presence_of :address,:sqfootage,:price,:bed,:bath,:constructed
  validates_format_of :address, with: /[A-Za-z0-9\s\-]/, message: "can only contain letters, numbers, spaces and dashes"
  validates_numericality_of :sqfootage, on: :create, :greater_than => 99, :less_than => 10001, message: "must be between 100 and 10000"
  validates_numericality_of :price, on: :create, :greater_than => 999, :less_than => 100000000, message: "must be between 1000 and 99999999"
  validates_numericality_of :bed, on: :create, :greater_than => 0, :less_than => 100, message: "must be between 1 and 99"
  validates_numericality_of :bath, on: :create, :greater_than => 0, :less_than => 100, message: "must be between 1 and 99"
  validates_numericality_of :constructed, on: :create, :greater_than => 1799, :less_than => 2016, message: "must be between 1800 and 2015"
end
