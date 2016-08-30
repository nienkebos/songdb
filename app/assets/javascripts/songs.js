document.addEventListener("turbolinks:load", function() {
  $('.delete-song').click(function(){
    var song_id = $(this).attr('id');
    var artist_id = $(this).attr('artist_id');


    $.ajax({
        url: '/songs/'+song_id,
        type: 'DELETE',
        data: {'id': song_id, 'artist_id': artist_id},
        success: function(response) {
          $('#song-'+song_id).remove();
        },
        error: function(response) {
          console.log(2, response);
        }
      });
  })
})
//
//   $('.new_song input[type="submit"]').click( function(e) {
//     e.preventDefault();
//     var artist_id = $('#song_artist_id').val();
//     var title = $('#song_title');
//     addSong(artist_id, title);
//     });
// });
//
//
// function addSong(artist_id, title){
//   console.log(2);
//   $.ajax({
//       url: '/artists/'+artist_id+'/songs',
//       type: 'POST',
//       data: {'artist_id': artist_id, 'title': title},
//       contentType: "application/json",
//       dataType: "json"})
//       .done(function(data) {
//
//   })
//       .fail(function(error) {
//         console.log(error);
//   });
