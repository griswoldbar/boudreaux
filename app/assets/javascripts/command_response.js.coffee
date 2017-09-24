$(document).ready ->
  $("#input-box").on("ajax:success", (e) ->
    message = e.detail[0]["message"]
    $("#response-box").text message
  )