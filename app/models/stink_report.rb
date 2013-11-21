# -*- encoding : utf-8 -*-
class StinkReport < ActiveRecord::Base
  HOURS = [
      'noc 0:00-4:00',
      'rano 4:00-6:00',
      'rano 6:00-10:00',
      'w południe 10:00-14:00',
      'po południu 14:00:18:00',
      'wieczór 18:00-22:00',
      'noc 21:00-23:59'
  ]
end
