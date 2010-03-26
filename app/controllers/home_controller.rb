class HomeController < ApplicationController
  def index
    @count = Site.count
    @top_classes = Tagging.find_by_sql("SELECT COUNT('tag_id') as big_count, tags.name, context FROM taggings INNER JOIN tags ON tags.id = taggings.tag_id WHERE context = 'css_classes' GROUP BY tag_id, tags.name,taggings.context ORDER by big_count DESC LIMIT 100;")
    @top_css_ids = Tagging.find_by_sql("SELECT COUNT('tag_id') as big_count, tags.name, context FROM taggings INNER JOIN tags ON tags.id = taggings.tag_id WHERE context = 'css_ids' GROUP BY tag_id, tags.name,taggings.context ORDER by big_count DESC LIMIT 100;")
  end
end
