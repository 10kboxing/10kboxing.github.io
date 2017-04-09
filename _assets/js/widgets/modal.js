$('#videoModal').on('show.bs.modal', function(event) {
  var button = $(event.relatedTarget);
  var modal = $(this);
  modal.find('.modal-title').text(button.data("title") ? button.data("title") : button.attr("title"));
  modal.find('.modal-body iframe').attr("src", button.data("content"));
})
