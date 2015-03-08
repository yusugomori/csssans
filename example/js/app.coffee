$ ->
  klasses = ['focus', 'focusBefore', 'focusAfter']

  $ul = $('ul')
  $ul.each () ->
    h = 0
    $(@).children('li').each () ->
      _h = $(@).height()

      if _h > h
        h = _h

    $(@).children('li').height(h)


  addKlass = (_root, _kid) ->
    $code = $(_root).parent('.code')
    _id = $code.attr 'id'
    _k = '.' + _id
    $('.font ' + _k).addClass klasses[_kid]
    $(_root).addClass klasses[0]

  removeKlass = (_root, _kid) ->
    $('.font > div > div').removeClass klasses[_kid]
    $(_root).removeClass klasses[0]


  $('.code .main').hover () ->
    addKlass(@, 0)
  , () ->
    removeKlass(@, 0)

  $('.code .before').hover () ->
    addKlass(@, 1)
  , () ->
    removeKlass(@, 1)

  $('.code .after').hover () ->
    addKlass(@, 2)
  , () ->
    removeKlass(@, 2)
