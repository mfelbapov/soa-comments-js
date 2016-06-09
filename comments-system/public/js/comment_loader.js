$(document).ready(function() {

  if (window.location.pathname == '/entries'){

    $('.entry-item').each(function(){

      var e_item = $(this);
      var entry_id = $(this).data('entry-id');
      console.log(entry_id);

      var target_url = `http:\/\/localhost:9394/posts/${entry_id}/comments`;
      console.log(target_url)

      var number_of_responses = $.ajax({
        headers: { 'X-Requested-With': 'XMLHttpRequest' },
        method: 'GET',
        dataType: 'json',
        url: target_url,
        data: {},
        success: function(a, b, c) {
          console.log("worked");
          console.log(a);
          console.log(b);
          console.log(c);
        },
        error: function(a, b, c) {
          console.log("error");
          console.log(a);
          console.log(b);
          console.log(c);
        }
      });

    })


}
})
