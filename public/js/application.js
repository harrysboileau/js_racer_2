
function update_player_position(lane, position){
  var this_lane = $('#' + lane)
  var active_cell = (this_lane).find('.active')
  active_cell.removeClass('active')
  var next_cell = this_lane.find('td:nth-child(' + (position + 1) + ')')
  next_cell.addClass('active')
}

function find_player_index(player) {
  return $('#' + player).find('.active').index()
}

function winner(lane) {
  var this_lane = $('#' + lane)
  return this_lane.find("td").last().hasClass("active")  
}

function declare_winner(winner) {
  alert(winner + 'You won!')
  $(document).off('keyup')
}


$(document).ready(function() {
  $(document).on('keyup', function(event) {
    var key_press = event.which
    if (key_press == 65) {
      var index = find_player_index('player1')
      update_player_position('player1', index + 1)
      if (winner('player1')) {
        declare_winner('player1')
        var data = 'player1'
        $.post('/updategamewinner',data,function(response){
          // if successful alert them that its been saved, then see if they want to play agian
        });
      }
    }
    else if (key_press == 76) {
      var index = find_player_index('player2')
      update_player_position('player2', index + 1)
      if (winner('player2')) {
        declare_winner('player2')
      }
    }
  });
});
