json.array! @consumptions.each do |consumption|
  json.partial! "consumption.json.jbuilder", consumption: consumption
end