@components.keys.each do |component|
  json.set! component do
    json.array! @components[component] do |block|
      json.name block.name
      json.media_url block.media_url
      json.config block.config
      json.type block.type.name unless block.type.nil?
    end
  end
end
