# -*- encoding : utf-8 -*-
class Report < ActiveRecord::Base
  HOURS = [
      'noc 0:00-4:00',
      'rano 4:00-6:00',
      'rano 6:00-10:00',
      'w południe 10:00-14:00',
      'po południu 14:00:18:00',
      'wieczór 18:00-22:00',
      'noc 21:00-23:59'
  ]

  #before_create :set_defaults

  validates_presence_of :email
  validates_uniqueness_of :session_token, scope: :email

  private
  def initialize(opts = nil)
    super(opts)
    self.seen_on = Date.today
  end
end

# == Schema Information
#
# Table name: reports
#
#  id         :integer          not null, primary key
#  lat        :decimal(20, 17)  default(0.0)
#  lng        :decimal(20, 17)  default(0.0)
#  email      :string(255)
#  seen_on    :date
#  token      :string(255)
#  hours      :string(255)
#  confirmed  :boolean          default(FALSE), not null
#  created_at :datetime
#  updated_at :datetime
#

