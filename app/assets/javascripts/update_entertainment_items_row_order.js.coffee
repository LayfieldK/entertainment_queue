jQuery ->
  

    $(".grid").sortable(
        tolerance: 'pointer'
        revert: 'invalid'
        placeholder: 'span2 well placeholder tile'
        forceHelperSize: true
        
        sort: (e, ui) ->
          ui.item.addClass('active-item-shadow')
        stop: (e, ui) ->
          ui.item.removeClass('active-item-shadow')
          
        update: (e, ui) ->
          # highlight the row on drop to indicate an update
          ui.item.effect('highlight', {color: '#beff95'}, 1000)
          $.map $(this).find('span.index'), (el, i) ->
            $(el).text (i+1) + ". "
          item_id = ui.item.data('item-id')
          position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
          $.ajax(
            type: 'POST'
            url: '/entertainment_items/update_row_order'
            dataType: 'json'
            data: {id: item_id, entertainment_item: {entertainment_item_id: item_id, row_order_position: position } }
          )
    )

  
  if $('#sortable').length > 0
    table_width = $('#sortable').width()
    cells = $('.table').find('tr')[0].cells.length
    desired_width = table_width / cells + 'px'
    #$('.table td').css('width', desired_width)
    $('.table tr').css('width', $('#sortable').width())
    
    $('#sortable').sortable(
      axis: 'y'
      items: '.item'
      cursor: 'move'
      
      sort: (e, ui) ->
        ui.item.addClass('active-item-shadow')
      stop: (e, ui) ->
        ui.item.removeClass('active-item-shadow')
        # highlight the row on drop to indicate an update
        ui.item.children('td').effect('highlight', {}, 1000)
      update: (e, ui) ->
        item_id = ui.item.data('item-id')
        position = ui.item.index() # this will not work with paginated items, as the index is zero on every page
        $.ajax(
          type: 'POST'
          url: '/entertainment_items/update_row_order'
          dataType: 'json'
          data: { entertainment_item: {entertainment_item_id: item_id, row_order_position: position } }
        )
    )