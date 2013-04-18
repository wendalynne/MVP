class Event < ActiveRecord::Base
  
  has_one :location
  
  attr_accessible :other_info, :length, :location_title, :cost, :date, :description, :location_id, :menu_pdf, :menu_text, :people_limit, :title
end
