  if options['resizable'] && options['resizable'] == true
    _on __events.inited, ($deck, cards) ->
      $(card).append('<div class="resizer" style="z-index: 90;">') for card in cards

      $('.resizer').on 'dragstart', (evt) ->
        parent = $(this).parent()
        debugger