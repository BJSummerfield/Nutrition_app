json.array! @groups.each do |group|
  json.partial! "group.json.jbuilder", group: group
end

