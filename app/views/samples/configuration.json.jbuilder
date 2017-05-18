unless @components.nil?
  json.array! @components.keys do |component|
    json.name component
    json.order Component.find_by(name: component).order
    json.components @components[component] do |block|
      json.name block.name
      json.media_url block.media_url
      json.config block.config
      json.type block.type.name unless block.type.nil?
    end
  end
else
  json.array!
end
