class Site < ActiveRecord::Base
  SITES = ["http://www.google.com", "http://www.twitter.com", "http://www.facebook.com", 'http://www.cnn.com', "http://news.bbc.co.uk"]
  acts_as_taggable_on :css_classes, :css_ids
end
