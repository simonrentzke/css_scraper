namespace :scrape do
desc 'update'
task :sites => :environment do
  require 'open-uri'
  require 'nokogiri'
  ff = File.open("lib/tasks/top-1m.csv").each do |line|
    begin
    url = line.split(",")[1].strip
    p "Finding css nonsense for #{url}"
    website = Site.find_by_url(url)
    if !website
      doc = Nokogiri::HTML(open("http://www.#{url}"))
      css = doc.css('@class')
      css_classes = css.map(&:value).join(", ") if css
      ids = doc.css('@id')
      css_ids = ids.map(&:value).join(", ") if ids
      site = Site.new(:url => url)
      p site.css_class_list = css_classes if css_classes
      p site.css_id_list = css_ids if css_ids
      site.save
    end
    rescue Timeout::Error
      print "Timeout::Error: #{$!}\n"
    rescue
     p "Dope! #{url} something went wrong!"
    end
  end
end
end