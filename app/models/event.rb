# == Schema Information
#
# Table name: events
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  people_limit :integer
#  description  :text
#  menu_pdf     :string(255)
#  menu_text    :text
#  date         :date
#  cost         :float
#  length       :integer
#  other_info   :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  host_id      :integer
#  blurb        :text
#  time         :time
#  vegan        :boolean
#  vegetarian   :boolean
#  gluten_free  :boolean
#

class Event < ActiveRecord::Base
  
  has_one :location
  has_many :images, :as => :imageable, :dependent => :destroy
  belongs_to :host, :class_name => "User", :foreign_key => "host_id"
  has_many :tickets
  has_many :guests, :through => :tickets
  has_many :follows, :as => :followable, :dependent => :destroy
  
  attr_accessible :other_info, :length, :cost, :date, :description, :menu_pdf, :menu_text, :people_limit, :title
  attr_accessible :host_id, :images_attributes, :time, :neighborhood, :blurb, :vegan, :vegetarian, :gluten_free

  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:image].blank? }, :allow_destroy => true

  def seats_left
    people_limit - guests_count
  end

  def percent_full
    (guests_count/people_limit.to_f)*100
  end

  def guests_count
    if guests.loaded?
      guests.size
    else
      guests.count
    end
  end
end
