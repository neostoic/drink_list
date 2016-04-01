$(document).on "page:change", ->
  $("#q").autocomplete(
    source: "/drinks/autocomplete",
    minLength: 2
  )