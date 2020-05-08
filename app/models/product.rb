class Product < ApplicationRecord
 validates :label, presence: true
 validates :installation_priority, presence: true
 validates :details, presence: true
 before_save :validate_product

 def inittialize
   @errors = ActiveModel::Errors.new(self)
 end

 def validate_product
   @errors.add(:label, :blank, message: "cannot be nil") if label.nil?
   @errors.add(:details, :blank, message: "not in json format") unless is_json? details.size
 end

protected
 def is_json? str
    begin
      !!JSON.parse(self)
    rescue
      false
    end
  end
end
