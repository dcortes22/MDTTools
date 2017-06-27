unless @components.nil?
  json.app_name @sample.name
  json.color @sample.color
  json.sections @components.keys do |component|
    json.name component
    json.order Component.find_by(name: component).order
    json.components @components[component] do |block|
      json.name block.name
      json.plataforms do
        json.array! block.plataforms.collect { |p| p.name}
      end
      json.media block.media_url
      json.config block.config
      json.type block.type.name unless block.type.nil?
    end
  end
else
  json.app_name
end
