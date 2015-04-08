$(document).ready ->

  $("#new_article").on("ajax:success", (e, data, status, xhr) ->
    $("#article_list").append xhr.responseText
    console.log("stuff", xhr.responseText)
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_article").append "<p>ERROR</p>"

