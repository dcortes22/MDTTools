# json.partial! "samples/sample", sample: @sample

@components.keys.each do |component|
  json.set! component do
    json.array! @components[component], :name, :media_url, :config
  end
end

# json.sections @sample.sections do |section|
#   json.section section.component.name
#   json.name section.name
#   json.media_url section.media_url
#   json.config section.config
# end
