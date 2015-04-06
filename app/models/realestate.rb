class Realestate < ActiveRecord::Base
  validates_presence_of :address,:sqfootage,:price,:bed,:bath,:constructed
  validates_format_of :address, with: /[A-Za-z0-9\s\-]/, message: "can only contain letters, numbers, spaces and dashes"
  validates_format_of :sqfootage, with: /[1-9][0-9][0-9][0-9]?[0-9]?/, message: "isn't a sqfootage"
  validates_format_of :price, with: /[1-9][0-9][0-9][0-9][0-9]?[0-9]?[0-9]?[0-9]?/, message: "must be between 1000 and 99999999"
  validates_format_of :bed, with: /[1-9][0-9]?/, message: "must be between 1 and 99 bedrooms"
  validates_format_of :bath, with: /[1-9][0-9]?/, message: "must be between 1 and 99 bathrooms"
  validates_format_of :constructed, with: /[1][8-9][0-9][0-9]|[2][0][0][0-9]|[2][0][1][0-5]/, message: "must be betweeen 1800 and 2015"
end
