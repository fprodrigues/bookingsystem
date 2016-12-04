json.array!(@calendars) do |event|
  json.title event.title
  json.start event.start
  json.end event.end
  json.funcao event.funcao
  json.nome event.nome
end
