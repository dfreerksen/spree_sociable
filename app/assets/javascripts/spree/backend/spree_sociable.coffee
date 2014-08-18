$ ->
  # Twitter name (sharing)
  $("input[name='twitter_name']").on "blur", ->
    regex = /^((https?:\/\/)?(w{3}\.)?(twitter\.com\/)|@|#)?([\w\-]+)([\?|#].*)?$/i
    fieldValue($(this), regex, '$5')
    return

  # Facebook App ID (sharing)
  $("input[name='facebook_app_id']").on "blur", ->
    regex = /^([0-9a-z]+)$/i
    fieldValue($(this), regex, "$1")
    return

  # Cleanup and/or replace field value
  fieldValue = (obj, regex, key) ->
    value    = if obj.val().match(regex) then obj.val() else ""
    response = value.trim()
                    .replace(/^\/|\/$/g, "")
                    .replace(regex, key)
    obj.val response
    return
