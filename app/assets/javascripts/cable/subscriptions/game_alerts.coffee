App.cable.subscriptions.create { channel: "GameAlertsChannel" },
  received: (data) ->
    $("#alerts-box").text(data["message"])    
