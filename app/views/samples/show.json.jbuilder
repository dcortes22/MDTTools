# json.partial! "samples/sample", sample: @sample

json.sections @sample.sections do |section|
  json.section section.component.name
  json.name section.name
  json.media_url section.media_url
  json.config section.config
end
