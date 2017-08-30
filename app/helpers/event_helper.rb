module EventHelper
  def event_categories_for_select
    Event::CATEGORY_MAP.map { |category_item| [category_item[:name], category_item[:id]] }
  end
end
