document.addEventListener("turbolinks:load", function() {
  $('.delete-song').click(function(){
    var song_id = $(this).attr('id');
console.log(song_id);

  $.ajax({
      url: '/songs/'+song_id,
      type: 'DELETE',
      data: {'id': song_id},
      success: function(response) {
        $('#song-'+song_id).remove();
      },
      error: function(response) {
        console.log(2, response);
      }
    })
  })

});
