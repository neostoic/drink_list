$(document).on "page:change", ->
  $('.logo h1 a .red').mouseover ->
    $(this).css("color", "#ff7473")

  $('.logo h1 a .yellow').mouseover ->
    $(this).css("color", "#ffc952")

  $('.logo h1 a .light_blue').mouseover ->
    $(this).css("color", "#47b8e0")
